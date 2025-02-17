package com.grownited.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

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
}
