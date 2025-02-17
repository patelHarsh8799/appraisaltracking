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
@Table(name = "Reviews")
public class EntityReview {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer reviewId; // PK
	private Integer appraisaId; // FK
	private Integer employeeId; // FK
	private Integer reviewerId; // FK
	@Temporal(TemporalType.DATE)
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date reviewDate;
	private String strengths;
	private String improvementAreas;
	private BigDecimal finalRating;
	private String comments;
	
	public Integer getReviewId() {
		return reviewId;
	}
	public void setReviewId(Integer reviewId) {
		this.reviewId = reviewId;
	}
	public Integer getAppraisaId() {
		return appraisaId;
	}
	public void setAppraisaId(Integer appraisaId) {
		this.appraisaId = appraisaId;
	}
	public Integer getEmployeeId() {
		return employeeId;
	}
	public void setEmployeeId(Integer employeeId) {
		this.employeeId = employeeId;
	}
	public Integer getReviewerId() {
		return reviewerId;
	}
	public void setReviewerId(Integer reviewerId) {
		this.reviewerId = reviewerId;
	}
	public Date getReviewDate() {
		return reviewDate;
	}
	public void setReviewDate(Date reviewDate) {
		this.reviewDate = reviewDate;
	}
	public String getStrengths() {
		return strengths;
	}
	public void setStrengths(String strengths) {
		this.strengths = strengths;
	}
	public String getImprovementAreas() {
		return improvementAreas;
	}
	public void setImprovementAreas(String improvementAreas) {
		this.improvementAreas = improvementAreas;
	}
	public BigDecimal getFinalRating() {
		return finalRating;
	}
	public void setFinalRating(BigDecimal finalRating) {
		this.finalRating = finalRating;
	}
	public String getComments() {
		return comments;
	}
	public void setComments(String comments) {
		this.comments = comments;
	}
	
	
}
