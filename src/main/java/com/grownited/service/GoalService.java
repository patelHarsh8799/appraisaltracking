package com.grownited.service;

import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.grownited.entity.AppraisalEntity;
import com.grownited.entity.GoalEntity;
import com.grownited.entity.NewGoalEntity;
import com.grownited.entity.UserEntity;
import com.grownited.repository.AppraisalRepository;
import com.grownited.repository.GoalRepository;
import com.grownited.repository.NewGoalRepository;
import com.grownited.repository.UserRepository;

@Service
public class GoalService {

	@Autowired
	GoalRepository repogoal;
	
	@Autowired
	NewGoalRepository goalRepository;
	
	@Autowired
	AppraisalRepository appraisalRepository;
	
	@Autowired
	UserRepository repouser;

	public List<NewGoalEntity> getGoalsByEmployeeId(Integer employeeId) {
		return goalRepository.findByEmployeeId(employeeId);
	}
	
	public void assignGoal(int goalId, int userID) {
	    UserEntity assignedByUser = repouser.findById(userID)
	            .orElseThrow(() -> new RuntimeException("User not found"));

	    if (!assignedByUser.getRole().equalsIgnoreCase("HR") && 
	        !assignedByUser.getRole().equalsIgnoreCase("Project Manager")) {
	        throw new RuntimeException("Only HR or Project Manager can assign goals");
	    }

	    GoalEntity goal = repogoal.findById(goalId)
	            .orElseThrow(() -> new RuntimeException("Goal not found"));

	    goal.setUserID(userID);
	    repogoal.save(goal);
	}
	
	public void assignAppraisal(int appraisalId, int userID) {
	    UserEntity assignedByUser = repouser.findById(userID)
	            .orElseThrow(() -> new RuntimeException("User not found"));

	    if (!assignedByUser.getRole().equalsIgnoreCase("HR") && 
	        !assignedByUser.getRole().equalsIgnoreCase("Project Manager")) {
	        throw new RuntimeException("Only HR or Project Manager can assign goals");
	    }

	    AppraisalEntity appraisal = appraisalRepository.findById(appraisalId)
	            .orElseThrow(() -> new RuntimeException("Goal not found"));

	    appraisal.setUserID(userID);
	    appraisalRepository.save(appraisal);
	}
	
	public void updateGoalStatus(GoalEntity goal) {
	    repogoal.save(goal); // Assuming `repogoal` is your JPA repository
	}
	
	public Map<Integer, List<NewGoalEntity>> getGoalsGroupedByEmployee() {
	    List<NewGoalEntity> allGoals = goalRepository.findAll();
	    return allGoals.stream().collect(Collectors.groupingBy(NewGoalEntity::getEmployeeId));
	}

}