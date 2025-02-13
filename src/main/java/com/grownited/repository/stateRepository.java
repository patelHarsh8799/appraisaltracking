package com.grownited.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.grownited.entity.states;

@Repository
public interface stateRepository extends JpaRepository<states, Integer>{
	
}
