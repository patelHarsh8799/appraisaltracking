package com.grownited.controller;

import java.util.List;
import java.util.Map;
import java.util.Optional;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.grownited.entity.AppraisalEntity;
import com.grownited.entity.DepartmentEntity;
import com.grownited.entity.GoalEntity;
import com.grownited.entity.PositionEntity;
import com.grownited.entity.UserEntity;
import com.grownited.repository.AppraisalRepository;
import com.grownited.repository.DepartmentRepository;
import com.grownited.repository.GoalRepository;
import com.grownited.repository.PositionRepository;
import com.grownited.repository.UserRepository;


@Controller
public class AdminController {
	
	@Autowired
	DepartmentRepository departmentRepository;
	
	@Autowired
	PositionRepository positionRepository;
	
	@Autowired
	GoalRepository goalRepository;
	
	@Autowired
	AppraisalRepository appraisalRepository;
	
	@Autowired
	UserRepository userRepository;
	
	@GetMapping("adminhome")
	public String adminHome(Model model) {
		
		List<PositionEntity> allPosition = positionRepository.findAll();
		
		long totalUsers = userRepository.count();
		Integer totleEmployee = userRepository.findByRole("Employee").size(); 
		Integer userWithoutAdmin = userRepository.countUsersWithoutAdmin();
		
		model.addAttribute("totleEmployee", totleEmployee);
		model.addAttribute("userWithoutAdmin", userWithoutAdmin);
		model.addAttribute("totalUsers", totalUsers);
		model.addAttribute("allPosition", allPosition);
		return "Admin/AdminHome";
	}
	
	@PostMapping
	public String savePosition(PositionEntity positionEntity) {
		positionRepository.save(positionEntity);
		return "redirect/:adminmanagedepartment";
	}
	
	// Admin User Management
	
	@GetMapping("adminadduser")
	public String addUser(Model model) {
		
		List<DepartmentEntity> allDepartments = departmentRepository.findAll();
		model.addAttribute("allDepartments", allDepartments);
//		List<PositionEntity> allPositions = repositoryPosition.findAll();
//		model.addAttribute("allPositions", allPositions);
		
		return "Admin/AdminAddUser";
	}
	
	@GetMapping("adminviewuser")
	public String viewUser(Model model) {
		
		List<UserEntity> userList = userRepository.findAll();
		model.addAttribute("userList", userList);
		
		return "Admin/AdminViewUserList";
	}
	
	@GetMapping("adminviewperticuleruser")
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
	
	// Admin Manage Department and Position
	
	@GetMapping("adminmanagedepartment")		
	public String manageDepartment(Model model) {
		List<DepartmentEntity> allDepartment = departmentRepository.findAll();
		model.addAttribute("allDepartment", allDepartment);
		List<PositionEntity> allPosition = positionRepository.findAll();
		model.addAttribute("allPosition", allPosition);
		return "Admin/AdminManageDepartment";
	}
	
	
	@GetMapping("adminlistprojects")
	public String listProjects(Model model) {
		return "Admin/AdminListProjects";
	}
	
	// Admin Goals Management
	
	@GetMapping("admingoalslist")
	public String adminGoalsList(Model model) {
		List<GoalEntity> allGoals = goalRepository.findAll();
		model.addAttribute("allGoals", allGoals);
		
		List<UserEntity> allUsers = userRepository.findAll();
		Map<Integer, String> employeeNames = allUsers.stream()
				.collect(Collectors.toMap(UserEntity::getUserID, u -> u.getFirstName() + " " + u.getLastName()));
		Map<Integer, String> managerNames = allUsers.stream()
				.collect(Collectors.toMap(UserEntity::getUserID, u -> u.getFirstName() + " " + u.getLastName()));
		model.addAttribute("managerNames", managerNames);
		model.addAttribute("employeeNames", employeeNames);
		return "Admin/AdminGoalsList";
	}
	
	// Admin Appraisal Management
	
	@GetMapping("adminappraisalslist")
	public String adminAppraisalsList(Model model) {
		List<AppraisalEntity> allAppraisals = appraisalRepository.findAll();
		model.addAttribute("allAppraisals", allAppraisals);
		
		List<UserEntity> allUsers = userRepository.findAll();
		Map<Integer, String> employeeNames = allUsers.stream()
				.collect(Collectors.toMap(UserEntity::getUserID, u -> u.getFirstName() + " " + u.getLastName()));
		Map<Integer, String> managerNames = allUsers.stream()
				.collect(Collectors.toMap(UserEntity::getUserID, u -> u.getFirstName() + " " + u.getLastName()));
		model.addAttribute("managerNames", managerNames);
		model.addAttribute("employeeNames", employeeNames);
		return "Admin/AdminAppraisalList";
	}

}
