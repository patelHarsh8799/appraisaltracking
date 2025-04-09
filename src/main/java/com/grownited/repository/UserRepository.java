package com.grownited.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.grownited.entity.UserEntity;
import java.util.List;


@Repository
public interface UserRepository extends JpaRepository<UserEntity, Integer>{
	UserEntity findByEmail(String email);
	List<UserEntity> findByRole(String role);
	
	 @Query(value = "SELECT COUNT(*) FROM users WHERE role IN ('Project Manager', 'HR', 'Employee')", nativeQuery = true) // Fetch only EMPLOYEE role users
	    Integer countUsersWithoutAdmin();
}
