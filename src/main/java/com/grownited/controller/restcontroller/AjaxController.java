package com.grownited.controller.restcontroller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

import com.grownited.entity.AppraisalEntity;
//import com.grownited.entity.PositionEntity;
import com.grownited.repository.AppraisalRepository;
//import com.grownited.repository.PositionRepository;

@RestController
public class AjaxController {
	
//	@Autowired
//	PositionRepository positionrepository;
	
	@Autowired
	AppraisalRepository appraisalRepository;

	/*
	 * @GetMapping("getallpositionbydepartmentid/{departmentID}") public
	 * List<PositionEntity> getAllPositionByDepartmentId(@PathVariable Integer
	 * departmentID){
	 * 
	 * List<PositionEntity> allPosition =
	 * positionrepository.findByDepartmentId(departmentID);
	 * 
	 * return allPosition; }
	 */
	
	@GetMapping("getallappraisalsbyemployeeid/{employeeID}")
	public List<AppraisalEntity> getAllAppraisalsByEmployeeId(@PathVariable Integer employeeID){
		
		List<AppraisalEntity> allAppraisals = appraisalRepository.findByEmployeeID(employeeID);
		
		return allAppraisals;
 	}
}
