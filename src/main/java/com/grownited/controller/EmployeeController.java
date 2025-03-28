package com.grownited.controller;

import java.io.IOException;
import java.util.List;
import java.util.Map;
import java.util.Optional;
import java.util.stream.Collector;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.ObjectUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.grownited.entity.DepartmentEntity;
import com.grownited.entity.GoalEntity;
import com.grownited.entity.UserEntity;
import com.grownited.repository.GoalRepository;
import com.grownited.repository.departmentRepository;
import com.grownited.repository.userRepository;
import com.grownited.service.GoalService;

import jakarta.servlet.http.HttpSession;
import org.springframework.web.bind.annotation.RequestBody;

//import com.cloudinary.Cloudinary;
//import com.cloudinary.utils.ObjectUtils;

@Controller
public class EmployeeController {

	@Autowired
	GoalRepository repogoal;

	@Autowired
	userRepository repouser;

	@Autowired
	departmentRepository repoDepartment;
	
	@Autowired
	GoalService servicegoal;

//	@Autowired
//	Cloudinary cloudinary;

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
		UserEntity user = (UserEntity) session.getAttribute("user");
		Integer userId = user.getUserID();
		List<GoalEntity> assignedGoals = servicegoal.getGoalsByUserID(userId);
		
		List<UserEntity> users = repouser.findAll();
		Map<Integer, String> assigndUsers = users.stream().collect(Collectors.toMap(UserEntity::getUserID,UserEntity::getFirstName));
		model.addAttribute("assignedGoals", assignedGoals);
		model.addAttribute("assigndUsers", assigndUsers);

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
	public String upadetEmployee(UserEntity entityuser, MultipartFile profilepicFile) {
//		
//		System.out.println(profilepicFile.getOriginalFilename());// file name
//		// cloud->
//		
////		if(profilePic.getOriginalFilename().endsWith(".jpg") || || || ) {
////			
////		}else {
////			//
////			//model 
////			return "Signup";
////		}
//		try {
//			Map result = cloudinary.uploader().upload(profilepicFile.getBytes(), ObjectUtils.emptyMap());
//			//System.out.println(result);
//			//System.out.println(result.get("url"));
//			entityuser.setProfilePicPath(result.get("url").toString());
//		} catch (IOException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
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
