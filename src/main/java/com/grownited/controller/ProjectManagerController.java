package com.grownited.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.grownited.entity.UserEntity;

import com.grownited.repository.userRepository;
import com.grownited.service.FindByRole;

@Controller
public class ProjectManagerController {

	@Autowired
	userRepository reposignup;

	@Autowired
	private FindByRole findbyrole;

	@GetMapping("projectmanagerhome")
	public String projectManagerHome() {
		return "ProjectManager";
	}

	@GetMapping("assigngoalsp")
	public String assignGoalsP(Model model) {
		List<UserEntity> allEmployees = findbyrole.getUsersByRole("employee");
		model.addAttribute("allEmployees", allEmployees);
		return "AssignGoalsP";
	}

}