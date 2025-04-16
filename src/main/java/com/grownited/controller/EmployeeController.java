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
import com.grownited.entity.FeedbackEntity;
import com.grownited.entity.GoalEntity;
import com.grownited.entity.NewGoalEntity;
import com.grownited.entity.ReviewEntity;
import com.grownited.entity.UserEntity;
import com.grownited.repository.DepartmentRepository;
import com.grownited.repository.GoalRepository;
import com.grownited.repository.NewGoalRepository;
import com.grownited.repository.ReviewRepository;
import com.grownited.repository.UserRepository;
import com.grownited.service.AppraisalService;
import com.grownited.service.FeedbackService;
import com.grownited.service.GoalService;
import com.grownited.service.UserService;

import jakarta.servlet.http.HttpSession;
import org.springframework.web.bind.annotation.RequestBody;

@Controller
public class EmployeeController {

	@Autowired
	GoalRepository repogoal;
	
	@Autowired
	NewGoalRepository goalRepository;

	@Autowired
	UserRepository repouser;

	@Autowired
	DepartmentRepository repoDepartment;
	
	@Autowired
	ReviewRepository reviewRepository;

	@Autowired
	GoalService servicegoal;
	
	@Autowired
	AppraisalService appraisalService;
	
	@Autowired
	UserService userService;
	
	@Autowired
	FeedbackService feedbackService;

	@Autowired
	Cloudinary cloudinary;
	
	@GetMapping("employeehome")
	public String employeeHome(HttpSession session, Model model) {
		UserEntity user = (UserEntity) session.getAttribute("user"); 
		Integer userId = user.getUserID();
		
	    List<AppraisalEntity> activeAppraisals = appraisalService.getActiveAppraisalsByEmployeeId(userId);

	    model.addAttribute("appraisals", activeAppraisals);

		List<NewGoalEntity> givenGoals = goalRepository.findByEmployeeId(userId);
		/*
		 * List<AppraisalEntity> appraisals =
		 * appraisalService.getAppraisalsForEmployee(userId);
		 * appraisals.sort(Comparator.comparing(AppraisalEntity::getEndDate));
		 */
		List<FeedbackEntity> feedbacks = feedbackService.getFeedbacksForEmployee(userId);
		feedbacks.sort(Comparator.comparing(FeedbackEntity::getFeedbackDate));
		model.addAttribute("appraisals", activeAppraisals);
		model.addAttribute("givenGoals", givenGoals);
		System.out.println("Appraisal cycle: " + activeAppraisals.size());
		return "Employee/EmployeeHome";
	}
	
	@GetMapping("myreviews")
	public String myReviews(Model model, HttpSession session) {
		UserEntity user = (UserEntity) session.getAttribute("user1");
	    
	    List<ReviewEntity> reviews = reviewRepository.findByEmployeeId(user.getUserID());
	    
	    Map<Integer, String> reviewerNames = userService.getReviewerNameMap(); // reviewer_id → name
	    model.addAttribute("reviews", reviews);
	    model.addAttribute("reviewerNames", reviewerNames);
	    
	    return  "Employee/EmployeeReviews";
	}
	
	@GetMapping("assignedgoals")
	public String assignedGoals(Model model, HttpSession session, GoalEntity goalEntity) {
		UserEntity user = (UserEntity) session.getAttribute("user");
		Integer userId = user.getUserID();
		List<NewGoalEntity> assignedGoals = servicegoal.getGoalsByEmployeeId(userId);

		List<UserEntity> users = repouser.findAll();
		Map<Integer, String> assigndUsers = users.stream()
				.collect(Collectors.toMap(UserEntity::getUserID, u -> u.getFirstName() + " " + u.getLastName()));
		model.addAttribute("assignedGoals", assignedGoals);
		model.addAttribute("assigndUsers", assigndUsers);
		return "Employee/AssignedGoals";
	}
	
	@GetMapping("myfeedbacks")
	public String myFeedbacks(Model model, HttpSession session) {
		UserEntity user = (UserEntity) session.getAttribute("user");
		Integer userId = user.getUserID();
		List<FeedbackEntity> givenFeedbacks = feedbackService.getGoalsByEmployeeId(userId);
		List<UserEntity> users = repouser.findAll();
		Map<Integer, String> givenBy = users.stream()
				.collect(Collectors.toMap(UserEntity::getUserID, u -> u.getFirstName() + " " + u.getLastName()));
		
		model.addAttribute("givenFeedbacks", givenFeedbacks);
		model.addAttribute("givenBy", givenBy);
		return "Employee/MyFeedbacks";
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

	@GetMapping("employeeuserprofile")
	public String employeeUserProfile() {
		return "Employee/EmployeeUserProfile";
	}
	
	@PostMapping("employeeupadateprofile")
	public String upadetEmployee(Model model, UserEntity entityuser, MultipartFile profileImage) {

		Optional<UserEntity> optional = repouser.findById(entityuser.getUserID());
		if (optional.isPresent()) {
			UserEntity dbUser = optional.get();
			dbUser.setFirstName(entityuser.getFirstName());
			dbUser.setLastName(entityuser.getLastName());
			dbUser.setEmail(entityuser.getEmail());
			dbUser.setGender(entityuser.getGender());
			dbUser.setContactNo(entityuser.getContactNo());
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
		return "redirect:/employeeuserprofile";
	}

	// For only Test mode

	@GetMapping("goals")
	public String goals() {
		return "Employee/NewGoal";
	}
	
	// Action Buttons
	
	@GetMapping("start-goal")
	public String startGoal(Integer goalId) {
		Optional<NewGoalEntity> optional = goalRepository.findById(goalId);
		
		if (optional.isPresent()) {
			NewGoalEntity newGoals = optional.get();
			newGoals.setStatus("In Progress");
			
			goalRepository.save(newGoals);
		}
		return "redirect:/assignedgoals";
	}
	@GetMapping("complete-goal")
	public String completeGoal(Integer goalId) {
		Optional<NewGoalEntity> optional = goalRepository.findById(goalId);
		
		if (optional.isPresent()) {
			NewGoalEntity newGoals = optional.get();
			newGoals.setStatus("Completed");
			newGoals.setProgress(100);
			goalRepository.save(newGoals);
		}
		return "redirect:/assignedgoals";
	}
}
