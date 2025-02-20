package com.grownited.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.grownited.entity.EntityEmployee;
import com.grownited.repository.employeeRepository;

@Controller
public class EmployeeController {
	
	@Autowired
	employeeRepository repoEmployee;
	
	@GetMapping("newemployee")
	public String newEmployee() {
		return "NewEmployee";
	}
	
	@PostMapping("saveemployee")
	public String saveEmployee(EntityEmployee entityEmployee) {
		repoEmployee.save(entityEmployee);
		return "home";
	}
	
	@GetMapping("listemployee")
	public String listEmployee(Model model) {
		List<EntityEmployee> employeeList = repoEmployee.findAll();
		model.addAttribute("employeeList", employeeList);
		// dataName , dataValue
		return "ListEmployee";
	}
	
	@GetMapping("viewemployee")
	public String viewEmployee(Integer employeeId, Model model) {
		// ?
		System.out.println("id ===> " + employeeId);
		Optional<EntityEmployee> op = repoEmployee.findById(employeeId);
		if (op.isEmpty()) {
			// not found
		} else {
			// data found
			EntityEmployee employee = op.get();
			// send data to jsp ->
			model.addAttribute("employee", employee);
		}
		return "ViewEmployee";
	}
	
	@GetMapping("deleteemployee")
	public String deleteEmployee(Integer employeeId) {
		repoEmployee.deleteById(employeeId);//delete from members where memberID = :memberId
		return "redirect:/listemployee";
	}
}
