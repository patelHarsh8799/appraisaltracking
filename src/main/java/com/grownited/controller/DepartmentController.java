package com.grownited.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import com.grownited.entity.DepartmentEntity;
import com.grownited.repository.departmentRepository;

@Controller
public class DepartmentController {
	
	@Autowired
	departmentRepository repositoryDepartment;
	
	@GetMapping("department")
	public String department(Model model) {
		List<DepartmentEntity> allDepartments = repositoryDepartment.findAll();
		model.addAttribute("allDepartments", allDepartments);
		return "Department";
	}   
	
	@PostMapping("savedepartment")
	public String submitDepartment(DepartmentEntity entityDepartment) {
		System.out.println(entityDepartment.getDepartmentName());
		repositoryDepartment.save(entityDepartment);
		return "redirect:/hrhome";
	}
	
	@GetMapping("listdepartment")
	public String listDepartment(Model model) {
		List<DepartmentEntity> departmentList = repositoryDepartment.findAll();
		model.addAttribute("departmentList", departmentList);
		return "ListDepartment";
	}
	
	@GetMapping("deletedepartment")
	public String deleteDepartment(Integer departmentId) {
		repositoryDepartment.deleteById(departmentId);
		return "redirect:/listdepartment";
	}
}






