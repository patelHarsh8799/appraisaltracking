package com.grownited.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.grownited.entity.GoalEntity;
import com.grownited.repository.GoalRepository;

@Service
public class GoalService {

	@Autowired
	GoalRepository repogoal;

	public List<GoalEntity> getGoalsByUserID(Integer userID) {
		return repogoal.findByUserID(userID);
	}
}