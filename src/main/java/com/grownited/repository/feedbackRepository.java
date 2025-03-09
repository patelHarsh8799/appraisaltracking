package com.grownited.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.grownited.entity.FeedbackEntity;

@Repository
public interface feedbackRepository extends JpaRepository<FeedbackEntity, Integer>{

}
