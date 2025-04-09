package com.grownited.entity;

import java.math.BigDecimal;
import java.time.LocalDate;
import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import jakarta.persistence.Temporal;
import jakarta.persistence.TemporalType;

@Entity
@Table(name = "goals")
public class GoalEntity {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer goalID; // PK
	private String appraisalID; // FK --> reference to appraisalEntity
	private Integer assignToUserID; // FK --> reference to EmployeeEntity
	private String goalName;
	private String goalDescription;
	@Temporal(TemporalType.DATE)
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date startDate;
	@Temporal(TemporalType.DATE)
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date endDate;
//	private BigDecimal progress;
	private String status; // not started, In progress, Completed
	private Integer userID;
//	public BigDecimal getProgress() {
//		return progress;
//	}
//	public void setProgress(BigDecimal progress) {
//		this.progress = progress;
//	}
	
	public Integer getGoalID() {
		return goalID;
	}
	public Integer getAssignToUserID() {
		return assignToUserID;
	}
	public void setAssignToUserID(Integer assignToUserID) {
		this.assignToUserID = assignToUserID;
	}
	public void setGoalID(Integer goalID) {
		this.goalID = goalID;
	}
	public String getAppraisalID() {
		return appraisalID;
	}
	public void setAppraisalID(String appraisalID) {
		this.appraisalID = appraisalID;
	}
	public Integer getUserID() {
		return userID;
	}
	public void setUserID(Integer userID) {
		this.userID = userID;
	}
	public String getGoalName() {
		return goalName;
	}
	public void setGoalName(String goalName) {
		this.goalName = goalName;
	}
	public String getGoalDescription() {
		return goalDescription;
	}
	public void setGoalDescription(String goalDescription) {
		this.goalDescription = goalDescription;
	}
	public Date getStartDate() {
		return startDate;
	}
	public void setStartDate(Date startDate) {
		this.startDate = startDate;
	}
	public Date getEndDate() {
		return endDate;
	}
	public void setEndDate(Date endDate) {
		this.endDate = endDate;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	
	
}
