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
@Table(name = "appraisals")
public class AppraisalEntity {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer appraisalId; // PK
	private Integer userID; // Current User
	private Integer employeeID;
	private String appraisalCycle;
	@Temporal(TemporalType.DATE)
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date startDate;
	@Temporal(TemporalType.DATE)
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date endDate;
	private BigDecimal overallRate;
	private String status; // pending , completed
	
	public Integer getUserID() {
		return userID;
	}
	public void setUserID(Integer userID) {
		this.userID = userID;
	}
	public Integer getEmployeeID() {
		return employeeID;
	}
	public void setEmployeeID(Integer employeeID) {
		this.employeeID = employeeID;
	}
	public BigDecimal getOverallRate() {
		return overallRate;
	}
	public void setOverallRate(BigDecimal overallRate) {
		this.overallRate = overallRate;
	}
	public Integer getAppraisalId() {
		return appraisalId;
	}
	public void setAppraisald(Integer appraisalId) {
		this.appraisalId = appraisalId;
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
