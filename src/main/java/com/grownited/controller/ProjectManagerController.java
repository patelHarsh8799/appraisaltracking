package com.grownited.controller;

import java.math.BigDecimal;
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
import com.grownited.entity.FeedbackEntity;
import com.grownited.entity.GoalEntity;
import com.grownited.entity.NewGoalEntity;
import com.grownited.entity.ReviewEntity;
import com.grownited.entity.TrainingEntity;
import com.grownited.entity.UserEntity;
import com.grownited.repository.AppraisalRepository;
import com.grownited.repository.FeedbackRepository;
import com.grownited.repository.GoalRepository;
import com.grownited.repository.NewGoalRepository;
import com.grownited.repository.ReviewRepository;
import com.grownited.repository.TrainingRepository;
import com.grownited.repository.UserRepository;
import com.grownited.service.AppraisalService;
import com.grownited.service.FindByRole;
import com.grownited.service.GoalService;

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
	NewGoalRepository newGoalRepository;
	
	@Autowired
	FeedbackRepository feedbackRepository;
	
	@Autowired
	ReviewRepository reviewRepository;
	
	@Autowired
	TrainingRepository trainingRepository;
	
	@Autowired
	GoalService goalService;
	
	@Autowired
	AppraisalService appraisalService;

	@GetMapping("projectmanagerhome")
	public String projectManagerHome(HttpSession session, Model model) {
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
		List<AppraisalEntity> assignedAppraisals = appraisalRepository.findByUserID(managerID);
		Map<Integer, List<NewGoalEntity>> goalsByEmployee = goalService.getGoalsGroupedByEmployee();
		List<UserEntity> allUsers = userRepository.findAll();
		Map<Integer, String> employeeNames = allUsers.stream()
				.collect(Collectors.toMap(UserEntity::getUserID, u -> u.getFirstName() + " " + u.getLastName()));
		model.addAttribute("assignedAppraisals", assignedAppraisals);
		model.addAttribute("employeeNames", employeeNames);
		model.addAttribute("goalsByEmployee", goalsByEmployee);
		return "ProjectManager/PMListGoals";
	}
	
	@PostMapping("savegoal")
	public String saveGoal(GoalEntity entityGoal) {
		entityGoal.setStatus("Not started");
		goalRepository.save(entityGoal);
		return "redirect:/pmassigngoalsp";
	}
	
	// Mapping For the Appraisal 
	
	@GetMapping("pmlistappraisal")
	public String pmListAppraisal(Model model, HttpSession session) {
		
		appraisalService.updateAppraisalStatuses();
		
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
	
	@GetMapping("pmgivefeedback")
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
	public String saveFeedback(FeedbackEntity feedbackEntity, HttpSession session) {
		UserEntity user = (UserEntity) session.getAttribute("user");
		if (user != null) {
			feedbackEntity.setManagerId(user.getUserID());
		}
		feedbackEntity.setFeedbackDate(new Date());
		feedbackRepository.save(feedbackEntity);
		return "redirect:/pmgivefeedback";
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
	public String pmCreateAppraisal(Model model) {
		List<UserEntity> allEmployees = findByrole.getUsersByRole("Employee");
		model.addAttribute("allEmployees", allEmployees);
		List<UserEntity> allManagers = findByrole.getUsersByRole("Project Manager");
		model.addAttribute("allManagers", allManagers);
		return "ProjectManager/PMCreateAppraisal";
	}
	
	@PostMapping("submitappraisal")
	public String submitAppraisal(AppraisalEntity appraisalEntity, HttpSession session ) {
		UserEntity user = (UserEntity) session.getAttribute("user");
		if (user != null) {
			appraisalEntity.setUserID(user.getUserID());
		}
		appraisalRepository.save(appraisalEntity);
		return "redirect:/pmcreateappraisal";
	}
	
	@GetMapping("pmassigngoals")
	public String pmAssignGoals(Model model) {
		List<UserEntity> allEmployees = findByrole.getUsersByRole("Employee");
		model.addAttribute("allEmployees", allEmployees);
		return "ProjectManager/PMAssignGoal";
	}
	
	@PostMapping("submit-goal")
	public String submitGoals(NewGoalEntity goalEntity,HttpSession session) {
		UserEntity user = (UserEntity) session.getAttribute("user");
		if (user != null) {
			goalEntity.setManagerId(user.getUserID());
		}
		goalEntity.setProgress(0);
		newGoalRepository.save(goalEntity);
		return "redirect:/pmassigngoals";
	}
	
	@GetMapping("pmreports")
	public String pmReports() {
		return "ProjectManager/PMReports";
	}
	
	@GetMapping("giverate")
	public String giveRate(Model model,Integer appraisalId) {
		AppraisalEntity appraisal = appraisalRepository.findById(appraisalId).get();
		model.addAttribute("appraisal", appraisal);
		return "ProjectManager/PMGiveRating";
	}
	
	@PostMapping("submitrating")
	public String submitRating(Integer appraisalId, BigDecimal overallRate) {
		AppraisalEntity appraisal = appraisalRepository.findById(appraisalId).get();
		appraisal.setOverallRate(overallRate);
		appraisal.setStatus("Completed");
		appraisalRepository.save(appraisal);
		return "redirect:/projectmanagerhome";
	}
	
	@GetMapping("pmuserprofile")
	public String adminUserProfile() {
		return "ProjectManager/PMUserProfile";
	}
	
	@PostMapping("pmupdateprofile")
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
		return "redirect:/pmuserprofile";
	}
}