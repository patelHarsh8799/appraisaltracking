package com.grownited.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.grownited.entity.EntityAppraisal;
import com.grownited.repository.appraisalRepository;

@Controller
public class AppraisalController {
	
	@Autowired
	appraisalRepository repoAppraisal;
	
	@GetMapping("appraisal")
	public String appraisal() {
		return "Appraisal";
	}
	
	@PostMapping("saveappraisal")
	public String saveAppraisal(EntityAppraisal entityAppraisal) {
		System.out.println(entityAppraisal.getAppraisalCycle());
		System.out.println(entityAppraisal.getStartDate());
		System.out.println(entityAppraisal.getEndDate());
		System.out.println(entityAppraisal.getOverallRate());
		System.out.println(entityAppraisal.getStatus());
		
		repoAppraisal.save(entityAppraisal);
		return "home";
	}
}
