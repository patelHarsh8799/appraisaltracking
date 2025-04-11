package com.grownited.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.grownited.entity.UserEntity;
import com.grownited.repository.UserRepository;

@Service
public class UserService {
	
	@Autowired
    private UserRepository userRepo;

    public Map<Integer, String> getEmployeeNamesMap() {
        List<UserEntity> employees = userRepo.findByRole("Employee"); // or use all if needed
        Map<Integer, String> nameMap = new HashMap<>();
        for (UserEntity u : employees) {
            nameMap.put(u.getUserID(), u.getFirstName());
        }
        return nameMap;
    }

}
