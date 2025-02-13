package com.grownited.entity;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "states")
public class states {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer stateIdId;
	private String state;
	
	public Integer getStateIdId() {
		return stateIdId;
	}
	public void setStateIdId(Integer stateIdId) {
		this.stateIdId = stateIdId;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	
}
