package com.project.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "review_table")
public class ReviewVO {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "review_id")
	private int reviewId;
	
	@Column(name = "review")
	private int review;

	@Column(name = "revie_description")
	private String reviewDescription;

	@ManyToOne
	@JoinColumn(name = "loginVO_id")
	private LoginVO loginVO;
	
	@ManyToOne
	@JoinColumn(name = "product_id")
	private ProductVO productVO;
	
	@Column(name = "review_date")
	private String date;

	public int getReviewId() {
		return reviewId;
	}

	public void setReviewId(int reviewId) {
		this.reviewId = reviewId;
	}

	public int getReview() {
		return review;
	}

	public void setReview(int review) {
		this.review = review;
	}

	public String getReviewDescription() {
		return reviewDescription;
	}

	public void setReviewDescription(String reviewDescription) {
		this.reviewDescription = reviewDescription;
	}

	public LoginVO getLoginVO() {
		return loginVO;
	}

	public void setLoginVO(LoginVO loginVO) {
		this.loginVO = loginVO;
	}

	public ProductVO getProductVO() {
		return productVO;
	}

	public void setProductVO(ProductVO productVO) {
		this.productVO = productVO;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

		
	
}
