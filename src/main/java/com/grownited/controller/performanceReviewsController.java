package com.grownited.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class performanceReviewsController {
	
	@GetMapping("selfassesment")
	public String selfAssesment() {
		return "selfassesment";
	}   
	
	@PostMapping("submitassesment")
	public String submitAssesment() {
		return "home";
	}
}
