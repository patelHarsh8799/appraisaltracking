package com.grownited.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.grownited.entity.UserEntity;
import com.grownited.repository.UserRepository;

@Service
public class UserService {
	
	@Autowired
    private UserRepository userRepository;

    public Map<Integer, String> getEmployeeNamesMap() {
        List<UserEntity> employees = userRepository.findByRole("Employee"); // or use all if needed
        Map<Integer, String> nameMap = new HashMap<>();
        for (UserEntity u : employees) {
            nameMap.put(u.getUserID(), u.getFirstName() + " " + u.getLastName());
        }
        return nameMap;
    }
    public Map<Integer, String> getReviewerNameMap() {
        List<UserEntity> HRs = userRepository.findByRole("HR"); // or use all if needed
        Map<Integer, String> nameMap = new HashMap<>();
        for (UserEntity u : HRs) {
            nameMap.put(u.getUserID(), u.getFirstName() + " " + u.getLastName());
        }
        return nameMap;
    }
    
    public List<UserEntity> getFilteredUsers() {
        List<UserEntity> allUsers = userRepository.findAll();
        return allUsers.stream()
            .filter(u -> u.getRole().equals("Project Manager") || u.getRole().equals("Employee"))
            .collect(Collectors.toList());
    }

}
