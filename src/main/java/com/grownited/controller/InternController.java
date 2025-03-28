package com.grownited.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class InternController {

	@GetMapping("internhome")
	public String internHome() {
		
		
		return "Intern/InternHome";
	}
	
	@GetMapping("internassignments")
	public String internAssignments() {
		return "Intern/InternAssignments";
	}
	
	@GetMapping("interntrainingmodule")
	public String internTrainingModule() {
		return "Intern/InternTrainingModule";
	}
	
}
