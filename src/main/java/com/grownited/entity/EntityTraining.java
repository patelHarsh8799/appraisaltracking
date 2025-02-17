package com.grownited.entity;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "training")
public class EntityTraining {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer trainingId; //PK
	private Integer appraisalId; // FK
	private Integer employeeId; // FK
	private String trainingName;
	private String trainingDescription;
	private String status; // Recommended, Completed
	private Integer recommendedBy;
	
	public Integer getTrainingId() {
		return trainingId;
	}
	public void setTrainingId(Integer trainingId) {
		this.trainingId = trainingId;
	}
	public Integer getAppraisalId() {
		return appraisalId;
	}
	public void setAppraisalId(Integer appraisalId) {
		this.appraisalId = appraisalId;
	}
	public Integer getEmployeeId() {
		return employeeId;
	}
	public void setEmployeeId(Integer employeeId) {
		this.employeeId = employeeId;
	}
	public String getTrainingName() {
		return trainingName;
	}
	public void setTrainingName(String trainingName) {
		this.trainingName = trainingName;
	}
	public String getTrainingDescription() {
		return trainingDescription;
	}
	public void setTrainingDescription(String trainingDescription) {
		this.trainingDescription = trainingDescription;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public Integer getRecommendedBy() {
		return recommendedBy;
	}
	public void setRecommendedBy(Integer recommendedBy) {
		this.recommendedBy = recommendedBy;
	}

	
}
