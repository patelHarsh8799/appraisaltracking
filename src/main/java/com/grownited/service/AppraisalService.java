package com.grownited.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.grownited.entity.AppraisalEntity;
import com.grownited.repository.AppraisalRepository;

@Service
public class AppraisalService {
	
	@Autowired
	private AppraisalRepository appraisalRepository;
	
	public List<AppraisalEntity> getAppraisalsForEmployee(Integer employeeID) {
		return appraisalRepository.findByEmployeeID(employeeID);
	}

}
