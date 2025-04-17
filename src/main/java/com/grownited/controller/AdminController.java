package com.grownited.controller;

import java.util.ArrayList;
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
import org.springframework.web.multipart.MultipartFile;

import com.grownited.entity.AppraisalEntity;
import com.grownited.entity.DepartmentEntity;
import com.grownited.entity.GoalEntity;
import com.grownited.entity.NewGoalEntity;
//import com.grownited.entity.PositionEntity;
import com.grownited.entity.UserEntity;
import com.grownited.repository.AppraisalRepository;
import com.grownited.repository.DepartmentRepository;
import com.grownited.repository.FeedbackRepository;
import com.grownited.repository.GoalRepository;
import com.grownited.repository.NewGoalRepository;
//import com.grownited.repository.PositionRepository;
import com.grownited.repository.UserRepository;

@Controller
public class AdminController {
	
	@Autowired
	DepartmentRepository departmentRepository;
	
	@Autowired
	NewGoalRepository goalRepository;
	
	@Autowired
	AppraisalRepository appraisalRepository;
	
	@Autowired
	FeedbackRepository feedbackRepository;
	
	@Autowired
	UserRepository userRepository;
	
	@GetMapping("adminhome")
	public String adminHome(Model model) {
		
//		List<PositionEntity> allPosition = positionRepository.findAll();
		int pending = appraisalRepository.countByStatus("Pending");
	    int Running = appraisalRepository.countByStatus("Running");
	    int completed = appraisalRepository.countByStatus("Completed");

	    model.addAttribute("pending", pending);
	    model.addAttribute("Running", Running);
	    model.addAttribute("completed", completed);
	    
	 // appraisal by month
	    List<Object[]> monthlyAppraisals = appraisalRepository.countAppraisalsByMonth();
	    List<String> months = new ArrayList<>();
	    List<Long> counts = new ArrayList<>();

	    for (Object[] obj : monthlyAppraisals) {
	        months.add((String) obj[0]); // e.g. "2024-01"
	        counts.add((Long) obj[1]);
	    }

	    model.addAttribute("months", months);
	    model.addAttribute("monthlyCounts", counts);
	    
	 // User roles for Pie Chart
	    List<Object[]> roleCounts = userRepository.countUsersByRole();
	    List<String> roles = new ArrayList<>();
	    List<Long> roleNumbers = new ArrayList<>();

	    for (Object[] obj : roleCounts) {
	        roles.add((String) obj[0]);
	        roleNumbers.add((Long) obj[1]);
	    }

	    model.addAttribute("roles", roles);
	    model.addAttribute("roleNumbers", roleNumbers);
	    
	 // Feedback type for Donut Chart
	    List<Object[]> feedbackStats = feedbackRepository.countFeedbackByType();
	    List<String> feedbackTypes = new ArrayList<>();
	    List<Long> feedbackCounts = new ArrayList<>();

	    for (Object[] row : feedbackStats) {
	        feedbackTypes.add((String) row[0]);
	        feedbackCounts.add((Long) row[1]);
	    }

	    model.addAttribute("feedbackTypes", feedbackTypes);
	    model.addAttribute("feedbackCounts", feedbackCounts);

		
		long totalUsers = userRepository.count();
		Integer totleEmployee = userRepository.findByRole("Employee").size(); 
		Integer userWithoutAdmin = userRepository.countUsersWithoutAdmin();
		
		model.addAttribute("totleEmployee", totleEmployee);
		model.addAttribute("userWithoutAdmin", userWithoutAdmin);
		model.addAttribute("totalUsers", totalUsers);
		return "Admin/AdminHome";
	}
	
	// Admin department management
	
	@GetMapping("adminmanagedepartment")		
	public String manageDepartment(Model model) {
		List<DepartmentEntity> allDepartment = departmentRepository.findAll();
		model.addAttribute("allDepartment", allDepartment);
		return "Admin/AdminManageDepartment";
	}
	
	@GetMapping("department")
	public String department(Model model) {
		List<DepartmentEntity> allDepartments = departmentRepository.findAll();
		model.addAttribute("allDepartments", allDepartments);
		List<DepartmentEntity> departmentList = departmentRepository.findAll();
		model.addAttribute("departmentList", departmentList);
		return "Admin/Department";
	}   
	
	@PostMapping("savedepartment")
	public String submitDepartment(DepartmentEntity entityDepartment) {
		System.out.println(entityDepartment.getDepartmentName());
		departmentRepository.save(entityDepartment);
		return "redirect:/adminmanagedepartment";
	}
	
	@GetMapping("departmentlist")
	public String departmentlist(Model model) {
		List<DepartmentEntity> departmentList = departmentRepository.findAll();
		model.addAttribute("departmentList", departmentList);
		return "DepartmentList";
	}
	
	@GetMapping("deletedepartment")
	public String deleteDepartment(Integer departmentId) {
		departmentRepository.deleteById(departmentId);
		return "redirect:/adminmanagedepartment";
	}
	
	// Admin User Management
	
	@GetMapping("adminadduser")
	public String addUser(Model model) {	
		List<DepartmentEntity> allDepartments = departmentRepository.findAll();
		model.addAttribute("allDepartments", allDepartments);
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
		List<DepartmentEntity> allDepartment = departmentRepository.findAll();
		model.addAttribute("allDepartment", allDepartment);
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
	@GetMapping("admindeleteemployee")
	public String adminDeleteEmployee(Integer userID) {
		userRepository.deleteById(userID);
		return "redirect:/adminviewuser";
	}
	
	// Admin Goals Management
	
	@GetMapping("admingoalslist")
	public String adminGoalsList(Model model) {
		List<NewGoalEntity> allGoals = goalRepository.findAll();
		List<UserEntity> allUsers = userRepository.findAll();
		Map<Integer, String> employeeNames = allUsers.stream()
				.collect(Collectors.toMap(UserEntity::getUserID, u -> u.getFirstName() + " " + u.getLastName()));
		Map<Integer, String> managerNames = allUsers.stream()
				.collect(Collectors.toMap(UserEntity::getUserID, u -> u.getFirstName() + " " + u.getLastName()));
		model.addAttribute("managerNames", managerNames);
		model.addAttribute("employeeNames", employeeNames);
		model.addAttribute("allGoals", allGoals);
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
	
	// Admin Profile Management
	
	@GetMapping("adminuserprofile")
	public String adminUserProfile() {
		return "Admin/AdminUserProfile";
	}
	
	@PostMapping("adminupadateprofile")
	public String adminUpdateProfile(Model model, UserEntity entityuser, MultipartFile profileImage) {
		Optional<UserEntity> optional = userRepository.findById(entityuser.getUserID());
		if (optional.isPresent()) {
			UserEntity dbUser = optional.get();
			dbUser.setFirstName(entityuser.getFirstName());
			dbUser.setLastName(entityuser.getLastName());
			dbUser.setEmail(entityuser.getEmail());
			dbUser.setGender(entityuser.getGender());
			dbUser.setContactNo(entityuser.getContactNo());
			userRepository.save(dbUser);
		}
		return "redirect:/adminuserprofile";
	}
		
	@GetMapping("admineditemployee")
	public String editEmployee(Integer userID, Model model) {
		List<DepartmentEntity> allDepartment = departmentRepository.findAll();
		model.addAttribute("allDepartment", allDepartment);
		Optional<UserEntity> op = userRepository.findById(userID);
		if (op.isEmpty()) {
			return "redirect:/adminviewuser";
		} else {
			model.addAttribute("Employee", op.get());
			return "Admin/AdminEditEmployee";
		}
	}
	@PostMapping("adminupdateemployee")
	public String adminUpadetEmployee(Model model, UserEntity entityuser, MultipartFile profileImage) {
		Optional<UserEntity> optional = userRepository.findById(entityuser.getUserID());
		if (optional.isPresent()) {
			UserEntity dbUser = optional.get();
			dbUser.setFirstName(entityuser.getFirstName());
			dbUser.setLastName(entityuser.getLastName());
			dbUser.setEmail(entityuser.getEmail());
			dbUser.setGender(entityuser.getGender());
			dbUser.setContactNo(entityuser.getContactNo());
			dbUser.setDateOfJoining(entityuser.getDateOfJoining());
			dbUser.setRole(entityuser.getRole());
			dbUser.setDepartmentID(entityuser.getDepartmentID());
			userRepository.save(dbUser);
		}
		return "redirect:/adminviewperticuleruser";
	}
}
