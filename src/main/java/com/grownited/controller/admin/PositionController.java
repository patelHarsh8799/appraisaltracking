package com.grownited.controller.admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.grownited.entity.EntityDepartment;
import com.grownited.entity.PositionEntity;
import com.grownited.repository.departmentRepository;
import com.grownited.repository.positionRepository;

@Controller
public class PositionController {
	
	@Autowired
	departmentRepository repositoryDepartment;
	
	@Autowired
	positionRepository repositoryPosition;
	
	@GetMapping("newposition")
	public String newPositon(Model model) {
		List<EntityDepartment> allDepartments = repositoryDepartment.findAll();
		model.addAttribute("allDepartments", allDepartments);
		return "NewPosition";
	}
	
	@PostMapping("saveposition")
	public String savePosition(PositionEntity entityPosition) {
		repositoryPosition.save(entityPosition);
		return "redirect:/hrhome";
	}
	
}
