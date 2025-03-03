package com.grownited.controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class AdminController {
	
	@GetMapping(value = {"/","admindashboard"})
	public String adminDashboard() {
		return "AdminDashBoard";
	}
}
