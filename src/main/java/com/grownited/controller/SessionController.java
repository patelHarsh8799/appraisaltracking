package com.grownited.controller;

import java.io.IOException;
import java.util.Collections;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.multipart.MultipartFile;

import com.cloudinary.Cloudinary;
import com.cloudinary.utils.ObjectUtils;
import com.grownited.entity.DepartmentEntity;
import com.grownited.entity.UserEntity;
import com.grownited.repository.DepartmentRepository;
//import com.grownited.repository.PositionRepository;
import com.grownited.repository.UserRepository;
import com.grownited.service.MailService;
import com.grownited.service.OtpService;

import jakarta.servlet.http.HttpSession;
import org.springframework.web.bind.annotation.RequestParam;


@Controller
public class SessionController {
	
	@Autowired
	OtpService serviceOtp;
	
	@Autowired
	MailService serviceMail;
	
	@Autowired
	UserRepository repositoryUser;
	
	@Autowired
	DepartmentRepository repositoryDepartment;
	
//	@Autowired
//	PositionRepository repositoryPosition;
	
	@Autowired
	PasswordEncoder encoder;
	
	@Autowired
	Cloudinary cloudinary;
	
	@GetMapping("adduser")
	public String addUser(Model model) {
		List<UserEntity> userlist = repositoryUser.findAll();
		model.addAttribute("userlist", userlist);
		List<DepartmentEntity> allDepartments = repositoryDepartment.findAll();
		model.addAttribute("allDepartments", allDepartments);
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
	
	@GetMapping("userprofile")
	public String userProfile(Model model) {
		List<DepartmentEntity> allDepartment = repositoryDepartment.findAll();
		model.addAttribute("allDepartment", allDepartment);
		return "UserProfile";
	}
	
	@PostMapping("saveuser")
	public String saveUser(UserEntity userEntity , Model model, MultipartFile profileImage) {
		
		System.out.println(profileImage.getOriginalFilename()); // prints file name

		if (profileImage.getOriginalFilename().endsWith(".jpg") || profileImage.getOriginalFilename().endsWith(".jpeg")
				|| profileImage.getOriginalFilename().endsWith(".png")) {
			try {
				Map result = cloudinary.uploader().upload(profileImage.getBytes(), ObjectUtils.emptyMap());
				System.out.println(result);
				System.out.println(result.get("url"));
				userEntity.setProfilePicPath(result.get("url").toString());
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		} else {
			model.addAttribute("error", "Invalid Profile Image type");
			return "redirect:/adduser";
		}
		userEntity.setStatus("Active");
		userEntity.setCreatedAt(new Date());
		
//		int randPassword = (int)(Math.random() * 1000000);
//		String passwordMail = String.format("%06d", randPassword);
		
		String password = userEntity.getPassword();
		
		String encPassword = encoder.encode(password);
		userEntity.setPassword(encPassword);
		
//		String conPassword = encoder.encode(password);
		userEntity.setConfirmPassword(password);
		
		repositoryUser.save(userEntity);
//		serviceMail.sendWelcomeMail(userEntity.getEmail(), userEntity.getFirstName(),passwordMail);
		serviceMail.sendWelcomeMail(userEntity.getEmail(), userEntity.getFirstName());
		return "redirect:/adminadduser";
	}
	
	@PostMapping("authenticate")
	public String authenticate(String email,String password,Model model,HttpSession session) {
		System.out.println(email);
		System.out.println(password);
		
		Optional<UserEntity> op = Optional.of(repositoryUser.findByEmail(email));
		
		UserEntity dbUser = op.get();
		session.setAttribute("user1", dbUser);
		
		if (op.isPresent()) {
			
			UserEntity dbUsers = op.get();
			boolean ans = encoder.matches(password, dbUsers.getPassword());
			
			if (ans == true) {
				session.setAttribute("user",dbUsers);
				if (dbUsers.getRole().equals("Admin")) {
					return "redirect:/adminhome";
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
		return "Login";
	}
	
	@GetMapping("logout") 
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/login";
	}	
	
//	@PostMapping("sendOTP")
//	public String sendOTP() {
//		return "ChangePassword";
//	} 
	
	@PostMapping("sendotp")
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
				user.setConfirmPassword(password);
				String encPwd = encoder.encode(password);
				user.setPassword(encPwd);
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
