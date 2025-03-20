package com.grownited.controller;

import java.util.Date;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.grownited.entity.DepartmentEntity;
import com.grownited.entity.PositionEntity;
import com.grownited.entity.UserEntity;
import com.grownited.repository.departmentRepository;
import com.grownited.repository.positionRepository;
import com.grownited.repository.userRepository;
import com.grownited.service.MailService;
import com.grownited.service.OtpService;

import jakarta.servlet.http.HttpSession;

@Controller
public class SessionController {
	
	@Autowired
	OtpService serviceOtp;
	
	@Autowired
	MailService serviceMail;
	
	@Autowired
	userRepository repositoryUser;
	
	@Autowired
	departmentRepository repositoryDepartment;
	
	@Autowired
	positionRepository repositoryPosition;
	
	@Autowired
	PasswordEncoder encoder;
	
	@GetMapping("adduser")
	public String addUser(Model model) {
		List<DepartmentEntity> allDepartments = repositoryDepartment.findAll();
		model.addAttribute("allDepartments", allDepartments);
		List<PositionEntity> allPositions = repositoryPosition.findAll();
		model.addAttribute("allPositions", allPositions);
		return "AddUser";
	}
	
	@GetMapping("login")
	public String login() {
		return "Login";
	}
	
	@GetMapping("forgetpassword")
	public String forgetPass() {
		return "ForgetPassword";
	}
	
	@GetMapping("home")
	public String home() {
		return "Home";
	}  
	
	@PostMapping("saveuser")
	public String saveUser(UserEntity userEntity , Model model) {
		
		userEntity.setStatus("Active");
		userEntity.setCreatedAt(new Date());
		
		int randPassword = (int)(Math.random() * 1000000);
		String passwordMail = String.format("%06d", randPassword);
		
		String encpasswordMail = encoder.encode(passwordMail);
		userEntity.setPassword(encpasswordMail);
		
		String encconpassMail = encoder.encode(passwordMail);
		userEntity.setConfirmPassword(encconpassMail);
		
		repositoryUser.save(userEntity);
		serviceMail.sendWelcomeMail(userEntity.getEmail(), userEntity.getFirstName(),passwordMail);
		return "redirect:/adduser";
	}
	
	@PostMapping("authenticate")
	public String authenticate(String email,String password,Model model,HttpSession session) {
		System.out.println(email);
		System.out.println(password);
		
		Optional<UserEntity> op = Optional.of(repositoryUser.findByEmail(email));
		if (op.isPresent()) {
			UserEntity dbUsers = op.get();
			boolean ans = encoder.matches(password, dbUsers.getPassword());
			
			if (ans == true) {
				session.setAttribute("user",dbUsers);
				if (dbUsers.getRole().equals("Admin")) {
					return "redirect:/admindashboard";
				} else if (dbUsers.getRole().equals("HR")) {
					return "redirect:/hrhome";
				} else if (dbUsers.getRole().equals("Project Manager")) {
					return "redirect:/projectmanagerhome";
				} else if (dbUsers.getRole().equals("Employee")) {
					return "redirect:/employeehome";
				} else {
					model.addAttribute("error","Please Contact Admin with code 1032");
					return "redirect:/login";
				}		
			}
		}
		model.addAttribute("error", "Invalid Credential");
		return "login";
	}
	
	@GetMapping("logout") 
	public String logout(HttpSession session) {
		session.invalidate();
		return "login";
	}	
	@PostMapping("sendOTP")
	public String sendOTP() {
		return "ChangePassword";
	} 
	
	@PostMapping("resetpassword")
	public String resetPassword(UserEntity entityUser,String email, Model model) {
		Optional<UserEntity> optional = Optional.of(repositoryUser.findByEmail(email));
		if (optional.isEmpty()) {
			model.addAttribute("error", "Email Not Found");
			return "ForgotPassword";
		} else {
			String otp = "";
			otp = (int) (Math.random() * 10000) + "";
//			String otp = String.format("%04d",otpString);
			
			UserEntity user = optional.get();
			user.setOtp(otp);
			repositoryUser.save(user);
			serviceOtp.sendOtpMail(entityUser.getEmail(), otp);
			return "ChangePassword";
		}
	}
	
	@PostMapping("updatepassword")
	public String updatePassword(String email, String password, String otp, Model model ) {
		Optional<UserEntity> optional = Optional.of(repositoryUser.findByEmail(email));
		if (optional.isEmpty()) {
			model.addAttribute("error", "Invalid Data");
			return "ChangePassword";
		} else {
			UserEntity user = optional.get();
			if (user.getOtp().equals(otp)) {
				String encPwd = encoder.encode(password);
				user.setPassword(encPwd);
				user.setConfirmPassword(password);
				user.setOtp("");
				repositoryUser.save(user);
			} else {
				model.addAttribute("error", "Invalid Data");
				return "ChangePassword";
			}
		}
		model.addAttribute("msg", "Password upadate");
		return "Login";
	} 
}
