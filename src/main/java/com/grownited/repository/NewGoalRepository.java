package com.grownited.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.grownited.entity.NewGoalEntity;

@Repository
public interface NewGoalRepository extends JpaRepository<NewGoalEntity, Integer> {
	
	List<NewGoalEntity> findByEmployeeId(Integer employeeId);

}
