package com.grownited.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class AppraisalController {
	
	@GetMapping("selfappraisal")
	public String selfAppraisal() {
		return "Employee/Self-Appraisal";
	}
	
}














