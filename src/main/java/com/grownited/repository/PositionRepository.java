package com.grownited.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.grownited.entity.PositionEntity;

@Repository
public interface PositionRepository extends JpaRepository<PositionEntity, Integer>{

	List<PositionEntity> findByDepartmentId(Integer departmentID);
}
