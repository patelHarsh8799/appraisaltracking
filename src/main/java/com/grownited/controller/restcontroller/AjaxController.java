package com.grownited.controller.restcontroller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

import com.grownited.entity.PositionEntity;
import com.grownited.repository.PositionRepository;

@RestController
public class AjaxController {
	@Autowired
	PositionRepository positionrepository;

	@GetMapping("getallpositionbydepartmentid/{departmentID}")
	 public List<PositionEntity> getAllPositionByDepartmentId(@PathVariable Integer departmentID){
		
		List<PositionEntity> allPosition = positionrepository.findByDepartmentId(departmentID);
		
//		System.out.println(departmentID);
		
		
		
		return allPosition;
	}
}
