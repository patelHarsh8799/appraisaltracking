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
	departmentRepository repoDepartment;
	
	@GetMapping("department")
	public String department() {
		return "Department";
	}   
	
	@PostMapping("savedepartment")
	public String submitDepartment(EntityDepartment entityDepartment) {
		System.out.println(entityDepartment.getDepartmentName());
		repoDepartment.save(entityDepartment);
		return "redirect:/listdepartment";
	}
	
	@GetMapping("listdepartment")
	public String listDepartment(Model model) {
		List<EntityDepartment> departmentList = repoDepartment.findAll();
		model.addAttribute("departmentList", departmentList);
		return "ListDepartment";
	}
	
}






