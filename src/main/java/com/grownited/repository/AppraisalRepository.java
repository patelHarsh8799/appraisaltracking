package com.grownited.repository;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.grownited.entity.AppraisalEntity;

@Repository
public interface AppraisalRepository extends JpaRepository<AppraisalEntity, Integer>{
	
	List<AppraisalEntity> findByUserID(Integer userID);
	
	List<AppraisalEntity> findByStatus(String status);
	
	List<AppraisalEntity> findByEmployeeID(Integer employeeID);
	
	int countByStatus(String status);
	
	@Query(value = "SELECT DATE_FORMAT(a.start_date, '%Y-%m') AS month, COUNT(*) AS count FROM appraisals a GROUP BY month ORDER BY month", nativeQuery = true)
	List<Object[]> countAppraisalsByMonth();
	 // Optional: If want to search by ID in the future
//    Optional<AppraisalEntity> findByAppraisalId(Long appraisalId);
	
}
