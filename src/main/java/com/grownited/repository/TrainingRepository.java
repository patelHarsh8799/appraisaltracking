package com.grownited.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.grownited.entity.TrainingEntity;

@Repository
public interface TrainingRepository extends JpaRepository<TrainingEntity, Integer>{

	List<TrainingEntity> findByRecommendedBy(Integer recommendedBy);
	
}
