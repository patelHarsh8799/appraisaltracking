package com.grownited.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import com.grownited.entity.DepartmentEntity;
import com.grownited.entity.PositionEntity;
import com.grownited.repository.DepartmentRepository;
import com.grownited.repository.PositionRepository;

@Controller
public class DepartmentController {
	
	@Autowired
	DepartmentRepository repositoryDepartment;
	
	@Autowired
	PositionRepository repoposition;
	
	@GetMapping("department")
	public String department(Model model) {
		List<DepartmentEntity> allDepartments = repositoryDepartment.findAll();
		model.addAttribute("allDepartments", allDepartments);
		List<DepartmentEntity> departmentList = repositoryDepartment.findAll();
		model.addAttribute("departmentList", departmentList);
		return "Department";
	}   
	
	@PostMapping("savedepartment")
	public String submitDepartment(DepartmentEntity entityDepartment) {
		System.out.println(entityDepartment.getDepartmentName());
		repositoryDepartment.save(entityDepartment);
		return "redirect:/department";
	}
	
	@GetMapping("departmentlist")
	public String departmentlist(Model model) {
		List<DepartmentEntity> departmentList = repositoryDepartment.findAll();
		model.addAttribute("departmentList", departmentList);
		List<PositionEntity> positionList = repoposition.findAll();
		model.addAttribute("positionList", positionList);
		return "DepartmentList";
	}
	
	@GetMapping("deletedepartment")
	public String deleteDepartment(Integer departmentId) {
		repositoryDepartment.deleteById(departmentId);
		return "redirect:/departmentlist";
	}
	
	@GetMapping("deleteposition")
	public String deletePosition(Integer positionId) {
		repoposition.deleteById(positionId);
		return "redirect:/departmentlist";
	}
}






