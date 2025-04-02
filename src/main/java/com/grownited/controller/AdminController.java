package com.grownited.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.grownited.entity.DepartmentEntity;
import com.grownited.entity.PositionEntity;
import com.grownited.entity.UserEntity;
import com.grownited.repository.DepartmentRepository;
import com.grownited.repository.UserRepository;


@Controller
public class AdminController {
	
	@Autowired
	DepartmentRepository departmentRepository;
	
	@Autowired
	UserRepository userRepository;
	
	@GetMapping("adminhome")
	public String adminHome(Model model) {
		return "Admin/AdminHome";
	}
	
	@GetMapping("managedepartment")		
	public String manageDepartment(Model model) {
		
		List<DepartmentEntity> allDepartment = departmentRepository.findAll();
		model.addAttribute("allDepartment", allDepartment);
		
		return "Admin/AdminManageDepartment";
	}
	
	@GetMapping("viewuser")
	public String viewUser(Model model) {
		
		List<UserEntity> userList = userRepository.findAll();
		model.addAttribute("userList", userList);
		
		return "Admin/AdminViewUserList";
	}
	
	@GetMapping("adminadduser")
	public String addUser(Model model) {
		
		List<DepartmentEntity> allDepartments = departmentRepository.findAll();
		model.addAttribute("allDepartments", allDepartments);
//		List<PositionEntity> allPositions = repositoryPosition.findAll();
//		model.addAttribute("allPositions", allPositions);
		
		return "Admin/AdminAddUser";
	}
	
	@GetMapping("listprojects")
	public String listProjects(Model model) {
		return "Admin/AdminListProjects";
	}
	
	@GetMapping("viewperticuleruser")
	public String viewPerticulerUser(Model model, Integer userID) {
		Optional<UserEntity> op = userRepository.findById(userID);
		if (op.isEmpty()) {
			// not found
		} else {
			// data found
			UserEntity pUser = op.get();
			// send data to jsp ->
			model.addAttribute("user", pUser);
		}
		return "Admin/AdminViewPerticulerUser";
	}
}
