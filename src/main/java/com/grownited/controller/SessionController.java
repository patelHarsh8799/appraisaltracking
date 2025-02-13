package com.grownited.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.grownited.entity.Users;

@Controller
public class SessionController {
	
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
	public String saveUser(Users users) {
		System.out.println(users.getFirstName());
		System.out.println(users.getLastName());
		System.out.println(users.getEmail());
		System.out.println(users.getPassword());
		System.out.println(users.getGender());
		System.out.println(users.getContactNo());
		System.out.println(users.getGender());
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
