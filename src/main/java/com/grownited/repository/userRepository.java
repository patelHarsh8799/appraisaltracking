package com.grownited.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.grownited.entity.UserEntity;
import java.util.List;


@Repository
public interface userRepository extends JpaRepository<UserEntity, Integer>{
	UserEntity findByEmail(String email);
	List<UserEntity> findByRole(String role);
}
