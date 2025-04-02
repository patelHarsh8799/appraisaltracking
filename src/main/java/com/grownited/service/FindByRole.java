package com.grownited.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.grownited.entity.UserEntity;
import com.grownited.repository.UserRepository;

@Service
public class FindByRole {
	@Autowired
	UserRepository reposignup;

	public List<UserEntity> getUsersByRole(String role) {
		return reposignup.findByRole(role);
	}
}