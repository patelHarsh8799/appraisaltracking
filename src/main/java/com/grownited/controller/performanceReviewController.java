package com.grownited.controller;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.grownited.entity.ReviewEntity;
import com.grownited.repository.ReviewRepository;

@Controller
public class PerformanceReviewController {
	
	@Autowired
	ReviewRepository repoReview;
	
	@GetMapping("reviews")
	public String reviews() {
		return "Reviews";
	}
//	@PostMapping("savereviews")
//	public String saveReviews(ReviewEntity entityReview) {
//		System.out.println(entityReview.getStrengths());
//		System.out.println(entityReview.getImprovementArea());
//		System.out.println(entityReview.getFinalRating());
//		System.out.println(entityReview.getComments());
//		entityReview.setReviewDate(new Date());
//		repoReview.save(entityReview);
//		return "home";
//	}
	@GetMapping("listreviews")
	public String listReviews(Model model) {
		List<ReviewEntity> reviewsList = repoReview.findAll();
		model.addAttribute("reviewsList", reviewsList);
		return "ListReviews";
	}
}
