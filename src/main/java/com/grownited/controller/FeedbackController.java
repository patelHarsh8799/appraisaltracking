package com.grownited.controller;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.grownited.entity.EntityFeedback;
import com.grownited.repository.feedbackRepository;


@Controller
public class FeedbackController {

	@Autowired
	feedbackRepository repoFeedback;
	
	@GetMapping("feedback")
	public String feedback() {
		return "Feedback";
	}
	
	@PostMapping("savefeedback")
	public String saveFeedback(EntityFeedback entityFeedback) {
		System.out.println(entityFeedback.getFeedbackText());
		System.out.println(entityFeedback.getType());
		entityFeedback.setFeedbackDate(new Date());
		repoFeedback.save(entityFeedback);
		return "home";
	}
}
