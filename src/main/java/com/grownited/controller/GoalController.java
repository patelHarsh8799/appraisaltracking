package com.grownited.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.PostMapping;

import com.grownited.entity.GoalEntity;
import com.grownited.entity.UserEntity;
import com.grownited.repository.GoalRepository;
import com.grownited.repository.userRepository;

import jakarta.servlet.http.HttpSession;

@Controller
public class GoalController {

	@Autowired
	GoalRepository repoGoal;
	
	@Autowired
	userRepository repouser;
	
	@PostMapping("savegoals")
	public String svaeGoals(GoalEntity entityGoal, HttpSession session) {
		UserEntity user = (UserEntity) session.getAttribute("user");
		Integer userID = user.getUserID();
		entityGoal.setAssigndByUserID(userID);
		System.out.println(userID);
		repoGoal.save(entityGoal);
		return "redirect:/assigngoalsp";
	}
}
