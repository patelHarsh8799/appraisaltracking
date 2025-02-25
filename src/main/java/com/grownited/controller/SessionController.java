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


import com.grownited.entity.UserEntity;
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
	PasswordEncoder encoder;
	
	@GetMapping(value = {"/","adduser"})
	public String addUser() {
		return "AddUser";
	}
	
	@GetMapping("login")
	public String login() {
		return "login";
	}
	
//	@PostMapping("login")
//	public String loginPage(@RequestParam("email") String email, @RequestParam("password") String password,HttpSession session) {
//	    Users user = repoUsers.findByEmail(email);
//	    if (user != null && user.getPassword().equals(password)) {
//	    	session.setAttribute("loggedInUser", user); // Store user in session
//	        return "index"; // Redirect to home page after login
//	    } else {
//	        return "login"; // Stay on login page if authentication fails
//	    }
//	}
//	
//	@GetMapping("home")
//	public String statePage(HttpSession session) {
//	    Users user = (Users) session.getAttribute("loggedInUser");
//	    if (user == null) {
//	        return "redirect:/login"; // Redirect to login if user is not logged in
//	    }
//	    return "home"; // Load home page if user is logged in
//	}
	
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
}
