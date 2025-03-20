package com.grownited.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.grownited.entity.DepartmentEntity;
import com.grownited.entity.GoalEntity;
import com.grownited.entity.UserEntity;
import com.grownited.repository.GoalRepository;
import com.grownited.repository.departmentRepository;
import com.grownited.repository.userRepository;

import jakarta.servlet.http.HttpSession;
import org.springframework.web.bind.annotation.RequestBody;



@Controller
public class EmployeeController {
	
	@Autowired
	GoalRepository repogoal;
	
	@Autowired
	userRepository repouser;
	
	@Autowired
	departmentRepository repoDepartment;
	
	@GetMapping("employeehome")
	public String employeeHome(HttpSession session) {
		return "EmployeeHome";
	}	
	@PostMapping("savegoal")
	public String saveGoal(GoalEntity entityGoal) {
		entityGoal.setStatus("not started");
		repogoal.save(entityGoal);
		return "redirect:/listgoals";
	}
	
	@GetMapping("listgoals")
	public String listGoals(Model model) {
		List<GoalEntity> goallist = repogoal.findAll();
		model.addAttribute("goallist", goallist);
		return "redirect:/assigngoalsp";
	}
	
	@GetMapping("assignedgoals")
	public String assignedGoals(Model model, HttpSession session) {
		List<GoalEntity> allGoals = repogoal.findAll();
		model.addAttribute("allGoals", allGoals);
		return "AssignedGoals";
	}
	
	@GetMapping("editemployee")
	public String editEmployee(Integer userID, Model model) {
		List<DepartmentEntity> allDepartment = repoDepartment.findAll();
		model.addAttribute("allDepartment", allDepartment);
		Optional<UserEntity> op = repouser.findById(userID); 
		if (op.isEmpty()) {
			return "redirect:/userlist";
		} else {
			model.addAttribute("Employee", op.get());
			return "EditEmployee";
		}
	}
	
	@PostMapping("updateemployee")
	public String upadetEmployee(UserEntity entityuser) {
		Optional<UserEntity> optional = repouser.findById(entityuser.getUserID());
		if (optional.isPresent()) {
			UserEntity dbUser = optional.get();
			dbUser.setFirstName(entityuser.getFirstName());
			dbUser.setLastName(entityuser.getLastName());
			dbUser.setEmail(entityuser.getEmail());
			dbUser.setDepartmentID(entityuser.getDepartmentID());
			dbUser.setGender(entityuser.getGender());
			dbUser.setDateOfJoining(entityuser.getDateOfJoining());
			dbUser.setContactNo(entityuser.getContactNo());
			dbUser.setRole(entityuser.getRole());
			repouser.save(dbUser);
		}
		return "redirect:/userlist";
	}
	
}
