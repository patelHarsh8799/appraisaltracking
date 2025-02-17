package com.grownited.entity;

import java.math.BigDecimal;
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
@Table(name = "appraisalScore")
public class EntityAppraisal {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer appraisald; // PK
	private Integer userId; // FK --> employee
	private String appraisalCycle;
	@Temporal(TemporalType.DATE)
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date startDate;
	@Temporal(TemporalType.DATE)
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date endDate;
	private BigDecimal overallRate;
	private String status; // pending , completed
	
	public BigDecimal getOverallRate() {
		return overallRate;
	}
	public void setOverallRate(BigDecimal overallRate) {
		this.overallRate = overallRate;
	}
	public Integer getAppraisald() {
		return appraisald;
	}
	public void setAppraisald(Integer appraisald) {
		this.appraisald = appraisald;
	}
	public Integer getUserId() {
		return userId;
	}
	public void setUserId(Integer userId) {
		this.userId = userId;
	}
	public String getAppraisalCycle() {
		return appraisalCycle;
	}
	public void setAppraisalCycle(String appraisalCycle) {
		this.appraisalCycle = appraisalCycle;
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
