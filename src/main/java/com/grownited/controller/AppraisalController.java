package com.grownited.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.grownited.entity.AppraisalEntity;
import com.grownited.repository.AppraisalRepository;

@Controller
public class AppraisalController {
	
	@Autowired
	AppraisalRepository repoAppraisal;
	
	@GetMapping("appraisal")
	public String appraisal() {
		return "Appraisal";
	}
	
	@PostMapping("saveappraisal")
	public String saveAppraisal(AppraisalEntity entityAppraisal) {
		System.out.println(entityAppraisal.getAppraisalCycle());
		System.out.println(entityAppraisal.getStartDate());
		System.out.println(entityAppraisal.getEndDate());
		System.out.println(entityAppraisal.getOverallRate());
		System.out.println(entityAppraisal.getStatus());
		repoAppraisal.save(entityAppraisal);
		return "Appraisal";
	}
	
	@GetMapping("listappraisal")
	public String listAppraisal(Model model) {
		List<AppraisalEntity> appraisalList = repoAppraisal.findAll();
		model.addAttribute("appraisalList", appraisalList);
		return "ListAppraisal";
	}
}














