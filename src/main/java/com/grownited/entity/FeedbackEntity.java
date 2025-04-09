package com.grownited.entity;

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
@Table(name = "feedback")
public class FeedbackEntity {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer feedbackId; // PK
	private Integer employeeId; // FK
	private Integer managerId; // FK
	private String appraisalId; // FK reference to appraisalEntity 
	private String feedbackText;
	@Temporal(TemporalType.DATE)
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date feedbackDate;
	private String type; // peer, manager
	
	public Integer getFeedbackId() {
		return feedbackId;
	}
	public void setFeedbackId(Integer feedbackId) {
		this.feedbackId = feedbackId;
	}
	public Integer getEmployeeId() {
		return employeeId;
	}
	public void setEmployeeId(Integer employeeId) {
		this.employeeId = employeeId;
	}
	public Integer getManagerId() {
		return managerId;
	}
	public void setManagerId(Integer managerId) {
		this.managerId = managerId;
	}
	public String getAppraisalId() {
		return appraisalId;
	}
	public void setAppraisalId(String appraisalId) {
		this.appraisalId = appraisalId;
	}
	public String getFeedbackText() {
		return feedbackText;
	}
	public void setFeedbackText(String feedbackText) {
		this.feedbackText = feedbackText;
	}
	public Date getFeedbackDate() {
		return feedbackDate;
	}
	public void setFeedbackDate(Date feedbackDate) {
		this.feedbackDate = feedbackDate;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	
	
}

