package com.grownited.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.grownited.entity.UserEntity;
import com.grownited.repository.userRepository;

@Controller
public class HRController {
	
	@Autowired
	userRepository repositoryuser;
	
	@GetMapping("listtohr")
	public String showtohr () {
		return new String();
	}
	@GetMapping("userlist")
	public String listofUsers(Model model) {
		List<UserEntity> userlist = repositoryuser.findAll();
		model.addAttribute("userlist", userlist);
		return "UserList";
	}	
	@GetMapping("viewemployee")
	public String viewEmployee(Integer userID, Model model) {
		// ?
		System.out.println("id ===> " + userID);
		Optional<UserEntity> op = repositoryuser.findById(userID);
		if (op.isEmpty()) {
			// not found
		} else {
			// data found
			UserEntity user = op.get();
			// send data to jsp ->
			model.addAttribute("user", user);
		}
		return "ViewPerticulerEmployee";
	}
	@GetMapping("deleteemployee")
	public String deleteEmployee(Integer userID) {
		repositoryuser.deleteById(userID);
		return "redirect:/listuser";
	}
}
