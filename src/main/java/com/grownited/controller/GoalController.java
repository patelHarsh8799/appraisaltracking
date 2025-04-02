package com.grownited.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.PostMapping;

import com.grownited.entity.GoalEntity;
import com.grownited.entity.UserEntity;
import com.grownited.repository.GoalRepository;
import com.grownited.repository.UserRepository;

import jakarta.servlet.http.HttpSession;

@Controller
public class GoalController {

	@Autowired
	GoalRepository repoGoal;
	
	@Autowired
	UserRepository repouser;
	
	@PostMapping("savegoals")
	public String saveGoals(GoalEntity entityGoal, HttpSession session) {
		UserEntity user = (UserEntity) session.getAttribute("user1");
		if (user != null) {
			repoGoal.save(entityGoal);
			return "redirect:/assigngoalsp";
		}
		return "redirect:/login";
//		Integer usera = user.getUserID();
//		entityGoal.setAssigndByUserID(usera);
//		System.out.println(usera);
//		repoGoal.save(entityGoal);
//		return "redirect:/assigngoalsp";
	}
}
