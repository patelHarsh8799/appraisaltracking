package com.grownited.controller;

import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.Optional;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.multipart.MultipartFile;

import com.grownited.entity.AppraisalEntity;
import com.grownited.entity.DepartmentEntity;
import com.grownited.entity.FeedbackEntity;
import com.grownited.entity.ReviewEntity;
import com.grownited.entity.UserEntity;
import com.grownited.repository.AppraisalRepository;
import com.grownited.repository.DepartmentRepository;
import com.grownited.repository.FeedbackRepository;
import com.grownited.repository.ReviewRepository;
import com.grownited.repository.UserRepository;
import com.grownited.service.AppraisalService;
import com.grownited.service.FindByRole;
import com.grownited.service.UserService;

import jakarta.servlet.http.HttpSession;

@Controller
public class HRController {
	
	@Autowired
	FindByRole findByRole;
	
	@Autowired
	UserRepository userRepository;
	
	@Autowired
	DepartmentRepository departmentRepository;
	
	@Autowired
	AppraisalRepository appraisalRepository;
	
	@Autowired
	AppraisalService appraisalService;
	
	@Autowired
	UserService userService;
	
	@Autowired
	FeedbackRepository feedbackRepository;
	
	@Autowired
	ReviewRepository reviewRepository;
	
	@Autowired
	DepartmentRepository repoDepartment;
	
	
	@GetMapping("hrhome")
	public String hrHome(Model model) {
		
		appraisalService.updateAppraisalStatuses();
		
		Integer totleEmployee = userRepository.findByRole("Employee").size();
		model.addAttribute("totleEmployee", totleEmployee);
		
		Integer runningAppraisal = appraisalRepository.countByStatus("Running");
		model.addAttribute("runningAppraisal", runningAppraisal);
		
		Integer completedAppraisal = appraisalRepository.countByStatus("Completed");
		model.addAttribute("completedAppraisal", completedAppraisal);
		
		Integer feedbacks = feedbackRepository.findAll().size();
		model.addAttribute("feedbacks", feedbacks);
		
		return "HR/HRHome";
	}
	
	// HR Appraisals
	
	@GetMapping("allappraisals")
	public String allAppraisals(Model model, HttpSession session) {
		UserEntity user = (UserEntity) session.getAttribute("user");
		
		List<UserEntity> allUsers = userRepository.findAll();
		Map<Integer, String> employees = allUsers.stream()
				.collect(Collectors.toMap(UserEntity::getUserID, u -> u.getFirstName() + " " + u.getLastName()));
		Map<Integer, String> managers = allUsers.stream()
				.collect(Collectors.toMap(UserEntity::getUserID, u -> u.getFirstName() + " " + u.getLastName()));
		List<AppraisalEntity> allAppraisals = appraisalRepository.findAll();
		model.addAttribute("allAppraisals", allAppraisals);
		model.addAttribute("employees", employees);
		model.addAttribute("managers", managers);
		return "HR/HRAppraisalList";
	}
	
	// HR Feedbacks
	
	@GetMapping("allfeedbacks")
	public String allFeedbacks(Model model, HttpSession session) {
		UserEntity user = (UserEntity) session.getAttribute("user");
		
		List<UserEntity> allUsers = userRepository.findAll();
		Map<Integer, String> employees = allUsers.stream()
				.collect(Collectors.toMap(UserEntity::getUserID, u -> u.getFirstName() + " " + u.getLastName()));
		Map<Integer, String> managers = allUsers.stream()
				.collect(Collectors.toMap(UserEntity::getUserID, u -> u.getFirstName() + " " + u.getLastName()));
		List<AppraisalEntity> allAppraisals = appraisalRepository.findAll();
		Map<Integer, String> appraisals = allAppraisals.stream()
				.collect(Collectors.toMap(AppraisalEntity::getAppraisalId, a -> a.getAppraisalCycle()));
		List<FeedbackEntity> allFeedbacks = feedbackRepository.findAll();
		model.addAttribute("allFeedbacks", allFeedbacks);
		model.addAttribute("appraisals", appraisals);
		model.addAttribute("employees", employees);
		model.addAttribute("managers", managers);
		return "HR/HRFeedbackReports";
	}
	
	// HR Review management
	
	@GetMapping("givereview")
	public String giveReview(Model model) {
		List<UserEntity> allEmployees = findByRole.getUsersByRole("Employee");
		model.addAttribute("allEmployees", allEmployees);
		return "HR/HRGiveReview";
	}
	
	@PostMapping("submitreview")
	public String submitReview(ReviewEntity reviewEntity, HttpSession  session) {
		UserEntity user = (UserEntity) session.getAttribute("user");
		if (user != null) {
			reviewEntity.setReviewerId(user.getUserID());
		}
		reviewEntity.setReviewDate(new Date());
		reviewRepository.save(reviewEntity);
		return "redirect:/givereview";
	}
	
	// HR User Management
	
	@GetMapping("allusers")
	public String allUsers(Model model) {
		
		List<UserEntity> filterdUser = userService.getFilteredUsers();
		model.addAttribute("filterdUser", filterdUser);
		
		return "HR/HRAllUserList";
	}
	
	@GetMapping("hrviewperticuleremployee")
	public String viewEmployee(Integer userID, Model model) {
		
		Optional<UserEntity> op = userRepository.findById(userID);
		if (op.isEmpty()) {
			// not found
		} else {
			// data found
			UserEntity pUser = op.get();
			// send data to jsp ->
			model.addAttribute("user", pUser);
		}
		return "HR/HRViewPerticulerUser";
	}
	
	@GetMapping("hrdeleteemployee")
	public String hrDeleteEmployee(Integer userID) {
		userRepository.deleteById(userID);
		return "redirect:/allusers";
	}
	
	// HR profile management
	
	@GetMapping("hruserprofile")
	public String adminUserProfile() {
		return "HR/HRUserProfile";
	}
	
	@PostMapping("hrupdateprofile")
	public String upadetEmployee(Model model, UserEntity entityuser, MultipartFile profileImage) {

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
		return "redirect:/hruserprofile";
	}
	@GetMapping("hreditemployee")
	public String hrEditEmployee(Integer userID, Model model) {
		List<DepartmentEntity> allDepartment = departmentRepository.findAll();
		model.addAttribute("allDepartment", allDepartment);
		Optional<UserEntity> op = userRepository.findById(userID);
		if (op.isEmpty()) {
			return "redirect:/adminviewuser";
		} else {
			model.addAttribute("Employee", op.get());
			return "Hr/HREditEmployee";
		}
	}
	@PostMapping("hrupdateemployee")
	public String hrUpadetEmployee(Model model, UserEntity entityuser, MultipartFile profileImage) {
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
		return "redirect:/hreditemployee";
	}
}
