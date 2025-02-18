package com.grownited.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.grownited.entity.EntityFeedback;
import com.grownited.entity.EntityTraining;
import com.grownited.repository.trainingRepository;

@Controller
public class TrainingController {
	
	@Autowired
	trainingRepository repoTraining;
	
	@GetMapping("training")
	public String training() {
		return "Training";
	}
	
	@PostMapping("savetraining")
	public String saveTraining(EntityTraining entityTraining) {
		System.out.println(entityTraining.getTrainingName());
		System.out.println(entityTraining.getTrainingDescription());
		System.out.println(entityTraining.getStatus());
		repoTraining.save(entityTraining);
		return "home";
	}
	@GetMapping("listtraining")
	public String listFeedback(Model model) {
		List<EntityTraining> trainingList = repoTraining.findAll();
		model.addAttribute("trainingList", trainingList);
		return "ListTraining";
	}
}
