package com.grownited.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.grownited.entity.EntityTraining;

@Repository
public interface trainingRepository extends JpaRepository<EntityTraining, Integer>{

}
