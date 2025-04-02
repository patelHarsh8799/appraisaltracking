package com.grownited.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.grownited.entity.GoalEntity;
import com.grownited.entity.UserEntity;
import com.grownited.repository.GoalRepository;
import com.grownited.repository.UserRepository;

@Service
public class GoalService {

	@Autowired
	GoalRepository repogoal;
	
	@Autowired
	UserRepository repouser;

	public List<GoalEntity> getGoalsByUserID(Integer userID) {
		return repogoal.findByUserID(userID);
	}
	public void assignGoal(int goalId, int assignedByUserId) {
	    UserEntity assignedByUser = repouser.findById(assignedByUserId)
	            .orElseThrow(() -> new RuntimeException("User not found"));

	    if (!assignedByUser.getRole().equalsIgnoreCase("HR") && 
	        !assignedByUser.getRole().equalsIgnoreCase("Project Manager")) {
	        throw new RuntimeException("Only HR or Project Manager can assign goals");
	    }

	    GoalEntity goal = repogoal.findById(goalId)
	            .orElseThrow(() -> new RuntimeException("Goal not found"));

	    goal.setAssigndByUserID(assignedByUserId);
	    repogoal.save(goal);
	}
}

//public void assignGoal(int goalId, int assignedByUserId) {
//    UserEntity assignedByUser = repouser.findById(assignedByUserId)
//            .orElseThrow(() -> new RuntimeException("User not found"));
//
//    if (!assignedByUser.getRole().equalsIgnoreCase("HR") && 
//        !assignedByUser.getRole().equalsIgnoreCase("Project Manager")) {
//        throw new RuntimeException("Only HR or Project Manager can assign goals");
//    }
//
//    GoalEntity goal = repogoal.findById(goalId)
//            .orElseThrow(() -> new RuntimeException("Goal not found"));
//
//    goal.setAssigndByUserID(assignedByUserId);
//    repogoal.save(goal);
//}