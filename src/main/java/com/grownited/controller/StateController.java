package com.grownited.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.grownited.entity.Users;
import com.grownited.entity.states;
import com.grownited.repository.stateRepository;

@Controller
public class StateController {
	
	@Autowired
	stateRepository repoState;
	
	@GetMapping("newstate")
	public String newState() {
		return "newstate";
	}
	
	@PostMapping("savestate")
	public String saveState(states states) {
		System.out.println(states.getState());
		repoState.save(states);
		return "newstate";
	}
}
