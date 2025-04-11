package com.grownited.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.grownited.entity.FeedbackEntity;
import com.grownited.entity.NewGoalEntity;
import com.grownited.repository.FeedbackRepository;

@Service
public class FeedbackService {
	
	@Autowired
	private FeedbackRepository feedbackRepository;
	
	public List<FeedbackEntity> getFeedbacksForEmployee(Integer employeeId) {
		return feedbackRepository.findByEmployeeId(employeeId);
	}
	
	public List<FeedbackEntity> getGoalsByEmployeeId(Integer employeeId) {
		return feedbackRepository.findByEmployeeId(employeeId);
	}
}
