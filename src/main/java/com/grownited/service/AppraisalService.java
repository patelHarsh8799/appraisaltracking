package com.grownited.service;

import java.util.Date;
import java.util.List;
import java.util.stream.Collectors;

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
	public void updateAppraisalStatuses() {
	    Date today = new Date();
	    List<AppraisalEntity> allAppraisals = appraisalRepository.findAll();

	    for (AppraisalEntity a : allAppraisals) {
	        if (a.getStartDate().compareTo(today) <= 0 && a.getEndDate().compareTo(today) >= 0) {
	            a.setStatus("Running");
	        } else if (a.getEndDate().before(today)) {
	            a.setStatus("Completed");
	        } else {
	            a.setStatus("Pending");
	        }
	        appraisalRepository.save(a);
	    }
	}
	public List<AppraisalEntity> getActiveAppraisalsByEmployeeId(Integer employeeId) {
	    Date today = new Date();

	    List<AppraisalEntity> all = appraisalRepository.findByEmployeeID(employeeId);

	    return all.stream()
	        .filter(a ->
	            a.getStartDate().compareTo(today) <= 0 &&
	            a.getEndDate().compareTo(today) >= 0
	        )
	        .collect(Collectors.toList());
	}

}
