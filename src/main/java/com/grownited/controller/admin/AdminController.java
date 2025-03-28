package com.grownited.controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.grownited.service.EmployeeService;

@Controller
public class AdminController {
	
	EmployeeService employeeService;
	
	@GetMapping(value = {"/","admindashboard"})
	public String adminDashboard(Model model) {
		return "AdminDashBoard";
	}
}
