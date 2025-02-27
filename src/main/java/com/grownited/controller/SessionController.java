package com.grownited.controller;

import java.util.Date;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.grownited.entity.EntityDepartment;
import com.grownited.entity.PositionEntity;
import com.grownited.entity.UserEntity;
import com.grownited.repository.departmentRepository;
import com.grownited.repository.positionRepository;
import com.grownited.repository.userRepository;
import com.grownited.service.MailService;

import jakarta.servlet.http.HttpSession;

@Controller
public class SessionController {
	
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
	
	@GetMapping(value = {"/","adduser"})
	public String addUser(Model model) {
		List<EntityDepartment> allDepartments = repositoryDepartment.findAll();
		model.addAttribute("allDepartments", allDepartments);
		List<PositionEntity> allPositions = repositoryPosition.findAll();
		model.addAttribute("allPositions", allPositions);
		return "AddUser";
	}
	
	@GetMapping("login")
	public String login() {
		return "login";
	}
	
	@GetMapping("forgetpassword")
	public String forgetPass() {
		return "forgetpassword";
	}
	
	@GetMapping("home")
	public String home() {
		return "home";
	}  
	
	@PostMapping("saveuser")
	public String saveUser(@ModelAttribute UserEntity userEntity , Model model) {
		String encPassword = encoder.encode(userEntity.getPassword());
		userEntity.setPassword(encPassword);
		userEntity.setRole("Developer");
		userEntity.setStatus("Active");
		userEntity.setCreatedAt(new Date());
		repositoryUser.save(userEntity);
		serviceMail.sendWelcomeMail(userEntity.getEmail(), userEntity.getFirstName());
		return "login";
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
					return "redirect:/admindeshbord";
				} else if (dbUsers.getRole().equals("HR")) {
					return "redirect:/hrhome";
				} else if (dbUsers.getRole().equals("ProjectManager")) {
					return "redirect:/projectmanagerdeshbord";
				} else if (dbUsers.getRole().equals("Developer")) {
					return "redirect:/home";
				} else {
					model.addAttribute("error","Please Contact Admin with code 1032");
					return "login";
				}		
			}
		}
		model.addAttribute("error", "Invalid Credential");
		return "login";
	}
	
	@PostMapping("sendOTP")
	public String sendOTP() {
		return "changePassword";
	} 
	
	@PostMapping("updatepassword")
	public String updatePassword() {
		return "home";
	} 
//	@GetMapping("department")
//	public String department(Model model) {
//		List<EntityDepartment> allDepartments = repositoryDepartment.findAll();
//		model.addAttribute("allDepartments", allDepartments);
//		return "Department";
//	} 
}
