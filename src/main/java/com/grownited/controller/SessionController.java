package com.grownited.controller;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.grownited.entity.Users;
import com.grownited.repository.userRepository;

@Controller
public class SessionController {
	
	@Autowired
	userRepository repoUsers;
	
//	@GetMapping("signup")
	@GetMapping(value = {"/","signup"})
	public String signup() {
		return "signup";
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
	public String saveUser(@ModelAttribute Users users , Model model) {
		repoUsers.save(users);
		users.setRole("USERS");
		users.setStatus(true);
		users.setCreatedAt(new Date());
		return "login";
	}
	
	@PostMapping("authenticate")
	public String authenticate(Users users) {
		System.out.println(users.getEmail());
		System.out.println(users.getPassword());
		return "home";
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
