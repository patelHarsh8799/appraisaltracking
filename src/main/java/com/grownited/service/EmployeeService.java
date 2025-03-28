package com.grownited.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.grownited.repository.userRepository;

@Service
public class EmployeeService {
	
	@Autowired
	private userRepository repoemployee;
	
	public Integer getTotalEmployeesOnly() {
        return repoemployee.countEmployeesOnly(); // Fetch only employees
    }

}
