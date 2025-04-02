package com.grownited.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.grownited.entity.DepartmentEntity;
import com.grownited.entity.UserEntity;
import com.grownited.repository.DepartmentRepository;
import com.grownited.repository.UserRepository;

@Controller
public class HRController {
	
	@Autowired
	UserRepository repositoryuser;
	
	@Autowired
	DepartmentRepository repoDepartment;
	
	@GetMapping("listtohr")
	public String showtohr () {
		return new String();
	}
	
	@GetMapping("hrhome")
	public String hrHome() {
		return "HR/HRHome";
	}
	
	@GetMapping("viewemployee")
	public String listofUsers(Model model) {
		List<UserEntity> employeelist = repositoryuser.findByRole("Employee");
		model.addAttribute("employeelist", employeelist);
		List<UserEntity> pmlist = repositoryuser.findByRole("Project Manager");
		model.addAttribute("pmlist", pmlist);
		return "UserList";
	}
	
	@GetMapping("viewperticuleremployee")
	public String viewEmployee(Integer userID, Model model) {
		
		Optional<UserEntity> op = repositoryuser.findById(userID);
		if (op.isEmpty()) {
			// not found
		} else {
			// data found
			UserEntity pUser = op.get();
			// send data to jsp ->
			model.addAttribute("user", pUser);
		}
		return "ViewPerticulerEmployee";
	}
	
	@GetMapping("deleteemployee")
	public String deleteEmployee(Integer userID) {
		repositoryuser.deleteById(userID);
		return "redirect:/userlist";
	}
}
