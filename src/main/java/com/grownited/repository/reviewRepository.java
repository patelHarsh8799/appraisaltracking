package com.grownited.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.grownited.entity.EntityReview;

@Repository
public interface reviewRepository extends JpaRepository<EntityReview, Integer>{

}
