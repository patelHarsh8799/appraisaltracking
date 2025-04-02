package com.grownited.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.grownited.entity.AppraisalEntity;

@Repository
public interface AppraisalRepository extends JpaRepository<AppraisalEntity, Integer>{

}
