package com.grownited.controller;

import java.util.Date;
import java.util.List;
import java.util.Optional;

import javax.xml.crypto.dsig.keyinfo.RetrievalMethod;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
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
	
	@Autowired
	PasswordEncoder encoder;
	
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
	
	@PostMapping("saveuser")
	public String saveUser(@ModelAttribute Users users , Model model) {
		String encPassword = encoder.encode(users.getPassword());
		users.setPassword(encPassword);
		users.setRole("USERS");
		users.setStatus(true);
		users.setCreatedAt(new Date());
		
		repoUsers.save(users);
		serviceMail.sendWelcomeMail(users.getEmail(), users.getFirstName());
		return "redirect:/listusers";
	}
	
	@PostMapping("authenticate")
	public String authenticate(String email,String password,Model model) {
		System.out.println(email);
		System.out.println(password);
		
		Optional<Users> op = Optional.of(repoUsers.findByEmail(email));
		if (op.isPresent()) {
			Users dbUsers = op.get();
			if (encoder.matches(password, dbUsers.getPassword())) {
				return "redierct:/home";
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
