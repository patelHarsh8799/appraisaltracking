package com.grownited.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.grownited.entity.GoalEntity;
import com.grownited.repository.goalRepository;

@Controller
public class GoalController {
	
	@Autowired
	goalRepository repoGoal;
	
	@GetMapping("goals")
	public String goals() {
		return "Goals";
	}
	
	@PostMapping("savegoals")
	public String svaeGoals(GoalEntity entityGoal) {
		System.out.println(entityGoal.getGoalName());
		System.out.println(entityGoal.getGoalDescription());
		System.out.println(entityGoal.getStartDate());
		System.out.println(entityGoal.getEndDate());
		System.out.println(entityGoal.getProgress());
		System.out.println(entityGoal.getStatus());
		repoGoal.save(entityGoal);
		return "home";
	}
	@GetMapping("listgoals")
	public String listGoals(Model model) {
		List<GoalEntity> goalsList = repoGoal.findAll();
		model.addAttribute("goalsList", goalsList);
		return "ListGoals";
	}
}
