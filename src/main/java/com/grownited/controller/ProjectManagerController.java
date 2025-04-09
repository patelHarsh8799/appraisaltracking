package com.grownited.controller;

import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.grownited.entity.AppraisalEntity;
import com.grownited.entity.FeedbackEntity;
import com.grownited.entity.GoalEntity;
import com.grownited.entity.ReviewEntity;
import com.grownited.entity.TrainingEntity;
import com.grownited.entity.UserEntity;
import com.grownited.repository.AppraisalRepository;
import com.grownited.repository.FeedbackRepository;
import com.grownited.repository.GoalRepository;
import com.grownited.repository.ReviewRepository;
import com.grownited.repository.TrainingRepository;
import com.grownited.repository.UserRepository;
import com.grownited.service.FindByRole;

import jakarta.servlet.http.HttpSession;

@Controller
public class ProjectManagerController {

	@Autowired
	UserRepository userRepository;

	@Autowired
	private FindByRole findByrole;
	
	@Autowired
	AppraisalRepository appraisalRepository;
	
	@Autowired
	GoalRepository goalRepository;
	
	@Autowired
	FeedbackRepository feedbackRepository;
	
	@Autowired
	ReviewRepository reviewRepository;
	
	@Autowired
	TrainingRepository trainingRepository;

	@GetMapping("projectmanagerhome")
	public String projectManagerHome() {
		return "ProjectManager/ProjectManagerHome";
	}

	// Mapping for Goals
	
	@GetMapping("pmassigngoalsp")
	public String pmAssignGoalsP(Model model, AppraisalEntity appraisalEntity) {
		List<UserEntity> allEmployees = findByrole.getUsersByRole("Employee");
		model.addAttribute("allEmployees", allEmployees);
		List<UserEntity> allManagers = findByrole.getUsersByRole("Project Manager");
		model.addAttribute("allManagers", allManagers);
		List<AppraisalEntity> allAppraisal = appraisalRepository.findAll();
		model.addAttribute("allAppraisal", allAppraisal);
		return "ProjectManager/PMAssignGoalsP";
	}
	
	@GetMapping("pmlistgoals")
	public String pmListGoals(Model model, HttpSession session) {
		UserEntity user = (UserEntity) session.getAttribute("user");
		Integer managerID = user.getUserID();
		List<GoalEntity> assignedGoals = goalRepository.findByUserID(managerID);
		
		System.out.println("Appraisals assigned by Manager ID " + managerID + ": " + assignedGoals.size());
		
		List<UserEntity> allUsers = userRepository.findAll();
		Map<Integer, String> employeeNames = allUsers.stream()
				.collect(Collectors.toMap(UserEntity::getUserID, u -> u.getFirstName() + " " + u.getLastName()));
		model.addAttribute("assignedGoals", assignedGoals);
		model.addAttribute("employeeNames", employeeNames);
		return "ProjectManager/PMListGoals";
	}
	
	@PostMapping("savegoal")
	public String saveGoal(GoalEntity entityGoal) {
		entityGoal.setStatus("Not started");
		goalRepository.save(entityGoal);
		return "redirect:/pmassigngoalsp";
	}
	
	// Mapping For the Appraisal 
	
	@GetMapping("pmfillappraisal")
	public String appraisal(Model model) {
		List<UserEntity> allEmployees = findByrole.getUsersByRole("Employee");
		model.addAttribute("allEmployees", allEmployees);
		List<UserEntity> allManagers = findByrole.getUsersByRole("Project Manager");
		model.addAttribute("allManagers", allManagers);
		return "ProjectManager/PMFillAppraisal";
	}
	
	@GetMapping("pmappraisallist")
	public String listAppraisal(Model model, HttpSession session) {
		UserEntity user = (UserEntity) session.getAttribute("user");
		Integer managerID = user.getUserID();
		List<AppraisalEntity> assignedAppraisals = appraisalRepository.findByUserID(managerID);
		
		System.out.println("Appraisals assigned by Manager ID " + managerID + ": " + assignedAppraisals.size());
		
		List<UserEntity> allUsers = userRepository.findAll();
		Map<Integer, String> employeeNames = allUsers.stream()
				.collect(Collectors.toMap(UserEntity::getUserID, u -> u.getFirstName() + " " + u.getLastName()));
		model.addAttribute("assignedAppraisals", assignedAppraisals);
		model.addAttribute("employeeNames", employeeNames);
		return "ProjectManager/PMListAppraisal";
	}
	
	@PostMapping("saveappraisal")
	public String saveAppraisal(AppraisalEntity entityAppraisal) {
		appraisalRepository.save(entityAppraisal);
		return "redirect:/pmfillappraisal";
	}
	
	// Feedback Controller
	
	@GetMapping("pmgivefeedbacktoemployee")
	public String pmGiveFeedBackToEmployee(Model model) {
		List<UserEntity> allEmployees = findByrole.getUsersByRole("Employee");
		model.addAttribute("allEmployees", allEmployees);
		List<UserEntity> allManagers = findByrole.getUsersByRole("Project Manager");
		model.addAttribute("allManagers", allManagers);
		List<AppraisalEntity> allAppraisal = appraisalRepository.findAll();
		model.addAttribute("allAppraisal", allAppraisal);
		return "ProjectManager/PMGiveFeedbackToEmployee";
	}
	
	@GetMapping("pmallgivenfeedback")
	public String pmAllGivenFeedback(Model model, HttpSession session) {
		UserEntity user = (UserEntity) session.getAttribute("user");
		Integer managerID = user.getUserID();
		List<FeedbackEntity> givenFeedbacks = feedbackRepository.findByManagerId(managerID);
		
		System.out.println("Appraisals assigned by Manager ID " + managerID + ": " + givenFeedbacks.size());
		
		List<UserEntity> allUsers = userRepository.findAll();
		Map<Integer, String> employeeNames = allUsers.stream()
				.collect(Collectors.toMap(UserEntity::getUserID, u -> u.getFirstName() + " " + u.getLastName()));
		List<AppraisalEntity> allAppraisals = appraisalRepository.findAll();
		Map<Integer, String> appraisals = allAppraisals.stream()
				.collect(Collectors.toMap(AppraisalEntity::getAppraisalId, a -> a.getAppraisalCycle()));
		model.addAttribute("givenFeedbacks", givenFeedbacks);
		model.addAttribute("employeeNames", employeeNames);
		return "ProjectManager/PMAllGivenFeedback";
	}
	

	@PostMapping("savefeedback")
	public String saveFeedback(FeedbackEntity feedbackEntity) {
		feedbackEntity.setFeedbackDate(new Date());
		feedbackRepository.save(feedbackEntity);
		return "redirect:/pmallgivenfeedback";
	}
	
	// Reviews Controller
	
	@GetMapping("pmgivereview")
	public String PMGiveReview(Model model) {
		List<UserEntity> allEmployees = findByrole.getUsersByRole("Employee");
		model.addAttribute("allEmployees", allEmployees);
		List<UserEntity> allManagers = findByrole.getUsersByRole("Project Manager");
		model.addAttribute("allManagers", allManagers);
		List<AppraisalEntity> allAppraisal = appraisalRepository.findAll();
		model.addAttribute("allAppraisal", allAppraisal);
		return "ProjectManager/PMGiveReview";
	}
	
	@GetMapping("pmallgivenreviews")
	public String pmAllGivenReviews(Model model, HttpSession session) {
		UserEntity user = (UserEntity) session.getAttribute("user");
		Integer reviewerID = user.getUserID();
		List<ReviewEntity> givenReviews = reviewRepository.findByReviewerId(reviewerID);
		
		System.out.println("Appraisals assigned by Manager ID " + reviewerID + ": " + givenReviews.size());
		
		List<UserEntity> allUsers = userRepository.findAll();
		Map<Integer, String> employeeNames = allUsers.stream()
				.collect(Collectors.toMap(UserEntity::getUserID, u -> u.getFirstName() + " " + u.getLastName()));
		List<AppraisalEntity> allAppraisals = appraisalRepository.findAll();
		Map<Integer, String> appraisals = allAppraisals.stream()
				.collect(Collectors.toMap(AppraisalEntity::getAppraisalId, a -> a.getAppraisalCycle()));
		model.addAttribute("givenReviews", givenReviews);
		model.addAttribute("employeeNames", employeeNames);
		model.addAttribute("appraisals", appraisals);
		return "ProjectManager/PMAllGivenReviews";
	}
	
	@PostMapping("savereviews")
	public String svaeReviews(ReviewEntity reviewEntity) {
		reviewEntity.setReviewDate(new Date());
		reviewRepository.save(reviewEntity);
		return "redirect:/pmgivereview";
	}
	
	// Training Controller
	
	@GetMapping("pmrecommendtraining")
	public String pmRecommendTraining(Model model) {
		List<UserEntity> allEmployees = findByrole.getUsersByRole("Employee");
		model.addAttribute("allEmployees", allEmployees);
		List<UserEntity> allManagers = findByrole.getUsersByRole("Project Manager");
		model.addAttribute("allManagers", allManagers);
		List<AppraisalEntity> allAppraisal = appraisalRepository.findAll();
		model.addAttribute("allAppraisal", allAppraisal);
		return "ProjectManager/PMRecommendTraining";
	}

	
	@GetMapping("pmallsuggestedtrainings")
	public String pmAllSuggestedTranings(Model model, HttpSession session) {
		UserEntity user = (UserEntity) session.getAttribute("user");
		Integer recommendedBy = user.getUserID();
		List<TrainingEntity> suggestedTraining = trainingRepository.findByRecommendedBy(recommendedBy);
		
		System.out.println("Appraisals assigned by Manager ID " + recommendedBy + ": " + suggestedTraining.size());
		
		List<UserEntity> allUsers = userRepository.findAll();
		Map<Integer, String> employeeNames = allUsers.stream()
				.collect(Collectors.toMap(UserEntity::getUserID, u -> u.getFirstName() + " " + u.getLastName()));
		List<AppraisalEntity> allAppraisals = appraisalRepository.findAll();
		Map<Integer, String> appraisals = allAppraisals.stream()
				.collect(Collectors.toMap(AppraisalEntity::getAppraisalId, a -> a.getAppraisalCycle()));
		model.addAttribute("suggestedTraining", suggestedTraining);
		model.addAttribute("employeeNames", employeeNames);
		model.addAttribute("appraisals", appraisals);
		return "ProjectManager/PMAllSuggestedTrainings";
	}
	
	@PostMapping("savetraining")
	public String saveTraning(TrainingEntity trainingEntity) {
		trainingRepository.save(trainingEntity);
		return "redirect:/pmrecommendtraining";
	}
	
	
	// New Content
	
	@GetMapping("pmcreateappraisal")
	public String pmCreateAppraisal() {
		return "ProjectManager/PMCreateAppraisal";
	}
	
	@GetMapping("pmassigngoals")
	public String pmAssignGoals() {
		return "ProjectManager/PMAssignGoals";
	}
	
	@GetMapping("pmgivefeedback")
	public String pmGiveFeedback() {
		return "ProjectManager/PMGiveFeedback";
	}
	
	@GetMapping("pmreports")
	public String pmReports() {
		return "ProjectManager/PMReports";
	}
	
}