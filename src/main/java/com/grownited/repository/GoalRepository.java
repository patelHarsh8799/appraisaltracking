package com.grownited.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.grownited.entity.GoalEntity;

@Repository
public interface GoalRepository extends JpaRepository<GoalEntity, Integer>{

	List<GoalEntity> findByUserID(Integer userID);
}
