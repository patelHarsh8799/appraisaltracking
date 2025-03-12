package com.grownited.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.grownited.entity.GoalEntity;
import com.grownited.repository.GoalRepository;

import jakarta.servlet.http.HttpSession;


@Controller
public class EmployeeController {
	
	@Autowired
	GoalRepository repogoal;
	
	@GetMapping("employeehome")
	public String employeeHome(HttpSession session) {
		return "EmployeeHome";
	}	
	@PostMapping("savegoal")
	public String saveGoal(GoalEntity entityGoal) {
		entityGoal.setStatus("not started");
		repogoal.save(entityGoal);
		return "redirect:/listgoals";
	}
	
	@GetMapping("listgoals")
	public String listGoals(Model model) {
		List<GoalEntity> goallist = repogoal.findAll();
		model.addAttribute("goallist", goallist);
		return "redirect:/assigngoalsp";
	}
	
	@GetMapping("assignedgoals")
	public String assignedGoals(Model model, HttpSession session) {
		List<GoalEntity> allGoals = repogoal.findAll();
		model.addAttribute("allGoals", allGoals);
		return "AssignedGoals";
	}
	
}
