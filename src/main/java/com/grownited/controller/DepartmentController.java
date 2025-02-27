package com.grownited.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.grownited.entity.EntityDepartment;
import com.grownited.repository.departmentRepository;

@Controller
public class DepartmentController {
	
	@Autowired
	departmentRepository repositoryDepartment;
	
	@GetMapping("department")
	public String department(Model model) {
		
		return "Department";
	}   
	
	@PostMapping("savedepartment")
	public String submitDepartment(EntityDepartment entityDepartment) {
		System.out.println(entityDepartment.getDepartmentName());
		repositoryDepartment.save(entityDepartment);
		return "redirect:/hrhome";
	}
	
	@GetMapping("listdepartment")
	public String listDepartment(Model model) {
		List<EntityDepartment> departmentList = repositoryDepartment.findAll();
		model.addAttribute("departmentList", departmentList);
		return "ListDepartment";
	}
}






