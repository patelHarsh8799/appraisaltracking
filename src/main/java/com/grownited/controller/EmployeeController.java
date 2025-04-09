package com.grownited.controller;

import java.time.LocalDate;
import java.time.ZoneId;
import java.util.Calendar;
import java.util.Comparator;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.Optional;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.ObjectUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.cloudinary.Cloudinary;
import com.grownited.entity.AppraisalEntity;
import com.grownited.entity.DepartmentEntity;
import com.grownited.entity.GoalEntity;
import com.grownited.entity.UserEntity;
import com.grownited.repository.DepartmentRepository;
import com.grownited.repository.GoalRepository;
import com.grownited.repository.UserRepository;
import com.grownited.service.AppraisalService;
import com.grownited.service.GoalService;

import jakarta.servlet.http.HttpSession;
import org.springframework.web.bind.annotation.RequestBody;

@Controller
public class EmployeeController {

	@Autowired
	GoalRepository repogoal;

	@Autowired
	UserRepository repouser;

	@Autowired
	DepartmentRepository repoDepartment;

	@Autowired
	GoalService servicegoal;
	
	@Autowired
	AppraisalService appraisalService;

	@Autowired
	Cloudinary cloudinary;
	
	

	@GetMapping("employeehome")
	public String employeeHome(HttpSession session, Model model) {
		UserEntity user = (UserEntity) session.getAttribute("user"); 
		Integer userId = user.getUserID();
		
		List<AppraisalEntity> appraisals = appraisalService.getAppraisalsForEmployee(userId);
		appraisals.sort(Comparator.comparing(AppraisalEntity::getEndDate));
		model.addAttribute("appraisals", appraisals);
		System.out.println("Appraisal cycle: " + appraisals.size());
		return "Employee/EmployeeHome";
	}

	@GetMapping("assignedgoals")
	public String assignedGoals(Model model, HttpSession session, GoalEntity goalEntity) {
		UserEntity user = (UserEntity) session.getAttribute("user");
		Integer userId = user.getUserID();
		List<GoalEntity> assignedGoals = servicegoal.getGoalsByUserID(userId);

		List<UserEntity> users = repouser.findAll();
		Map<Integer, String> assigndUsers = users.stream()
				.collect(Collectors.toMap(UserEntity::getUserID, u -> u.getFirstName() + " " + u.getLastName()));
		model.addAttribute("assignedGoals", assignedGoals);
		model.addAttribute("assigndUsers", assigndUsers);
		return "Employee/AssignedGoals";
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
	public String upadetEmployee(Model model, UserEntity entityuser, MultipartFile profileImage) {

		Optional<UserEntity> optional = repouser.findById(entityuser.getUserID());
		if (optional.isPresent()) {
			UserEntity dbUser = optional.get();
//			dbUser.setFirstName(entityuser.getFirstName());
//			dbUser.setLastName(entityuser.getLastName());
			dbUser.setEmail(entityuser.getEmail());
//			dbUser.setDepartmentID(entityuser.getDepartmentID());
//			dbUser.setGender(entityuser.getGender());
//			dbUser.setDateOfJoining(entityuser.getDateOfJoining());
//			dbUser.setContactNo(entityuser.getContactNo());
//			dbUser.setRole(entityuser.getRole());
//			dbUser.setProfilePicPath(entityuser.getProfilePicPath());
			repouser.save(dbUser);
		}
//		System.out.println(profileImage.getOriginalFilename()); // prints file name
//
//		if (profileImage.getOriginalFilename().endsWith(".jpg") || profileImage.getOriginalFilename().endsWith(".jpeg")
//				|| profileImage.getOriginalFilename().endsWith(".png")) {
//			try {
//				Map result = cloudinary.uploader().upload(profileImage.getBytes(), Collections.emptyMap());
//				System.out.println(result);
//				System.out.println(result.get("url"));
//				entityuser.setProfilePicPath(result.get("url").toString());
//			} catch (IOException e) {
//				// TODO Auto-generated catch block
//				e.printStackTrace();
//			}
//		} else {
//			model.addAttribute("error", "Invalid Profile Image type");
//			return "redirect:/userlist";
//		}
		return "redirect:/userprofile";
	}

	// For only Test mode

	@GetMapping("goals")
	public String goals() {
		return "Employee/NewGoal";
	}

}
