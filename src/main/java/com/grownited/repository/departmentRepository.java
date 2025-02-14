package com.grownited.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.grownited.entity.EntityDepartment;

public interface departmentRepository extends JpaRepository<EntityDepartment, Integer>{

}
