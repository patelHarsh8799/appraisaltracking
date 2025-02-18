package com.grownited.controller;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.grownited.entity.Users;
import com.grownited.repository.userRepository;
import com.grownited.service.MailService;

import jakarta.servlet.http.HttpSession;

@Controller
public class SessionController {
	
	@Autowired
	MailService serviceMail;
	
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
	
	@GetMapping("listusers")
	public String listUsers(Model model) {
		List<Users> userList = repoUsers.findAll();
		model.addAttribute("userList", userList);
		return "ListUsers";
	}
	
	@PostMapping("saveuser")
	public String saveUser(@ModelAttribute Users users , Model model) {
		repoUsers.save(users);
		serviceMail.sendWelcomeMail(users.getEmail(), users.getFirstName());
		users.setRole("USERS");
		users.setStatus(true);
		users.setCreatedAt(new Date());
		return "redirect:/listusers";
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
