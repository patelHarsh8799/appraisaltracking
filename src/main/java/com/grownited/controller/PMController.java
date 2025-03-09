package com.grownited.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class PMController {
	
	@GetMapping("projectmanagerdeshboard")
	public String projectManagerDashBoard() {
		return "PMDeshboard";
	}
}
