package com.project.model;

import java.util.Date;

import javax.persistence.Column;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "offer_table")
public class OfferVO {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "offer_id")
	private int offerId;

	@ManyToOne
	@JoinColumn(name = "c_id")
	private CategoryVO categoryVO;

	@ManyToOne
	@JoinColumn(name = "Subcat_Id")
	private SubCategoryVO subCategoryVO;

	@ManyToOne
	@JoinColumn(name = "product_id")
	private ProductVO productVO;

	@Column(name = "Offers_description")
	private String offersDescription;

	@Column(name = "Start_date")
	private String startDate;

	@Column(name = "End_date")
	private String endDate;

	@Column(name = "status")
	private Boolean status = true;

	public int getOfferId() {
		return offerId;
	}

	public void setOfferId(int offerId) {
		this.offerId = offerId;
	}

	public CategoryVO getCategoryVO() {
		return categoryVO;
	}

	public void setCategoryVO(CategoryVO categoryVO) {
		this.categoryVO = categoryVO;
	}

	public SubCategoryVO getSubCategoryVO() {
		return subCategoryVO;
	}

	public void setSubCategoryVO(SubCategoryVO subCategoryVO) {
		this.subCategoryVO = subCategoryVO;
	}

	public ProductVO getProductVO() {
		return productVO;
	}

	public void setProductVO(ProductVO productVO) {
		this.productVO = productVO;
	}

	public String getOffersDescription() {
		return offersDescription;
	}

	public void setOffersDescription(String offersDescription) {
		this.offersDescription = offersDescription;
	}

	public String getStartDate() {
		return startDate;
	}

	public void setStartDate(String startDate) {
		this.startDate = startDate;
	}

	public String getEndDate() {
		return endDate;
	}

	public void setEndDate(String endDate) {
		this.endDate = endDate;
	}

	public Boolean getStatus() {
		return status;
	}

	public void setStatus(Boolean status) {
		this.status = status;
	}

}
