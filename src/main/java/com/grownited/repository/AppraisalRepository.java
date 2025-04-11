package com.grownited.repository;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.grownited.entity.AppraisalEntity;

@Repository
public interface AppraisalRepository extends JpaRepository<AppraisalEntity, Integer>{
	
	List<AppraisalEntity> findByUserID(Integer userID);
	
	List<AppraisalEntity> findByEmployeeID(Integer employeeID);
	
	 // Optional: If want to search by ID in the future
//    Optional<AppraisalEntity> findByAppraisalId(Long appraisalId);
	
}
