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
@Table(name="SubCategory_table")
public class SubCategoryVO {

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="Subcat_Id")
	private int subCategoryId;
	
	@Column(name="Subcat_Name")
	private String subCategoryName;
	
	@Column(name="Subcat_desc")
	private String subCategoryDesc;
	
	@ManyToOne
	@JoinColumn(name="c_id")
	public CategoryVO categoryVO;
	
	public CategoryVO getCategoryVO() {
		return categoryVO;
	}

	public void setCategoryVO(CategoryVO categoryVO) {
		this.categoryVO = categoryVO;
	}

	public int getSubCategoryId() {
		return subCategoryId;
	}

	public void setSubCategoryId(int subCategoryId) {
		this.subCategoryId = subCategoryId;
	}

	public String getSubCategoryName() {
		return subCategoryName;
	}

	public void setSubCategoryName(String subCategoryName) {
		this.subCategoryName = subCategoryName;
	}

	public String getSubCategoryDesc() {
		return subCategoryDesc;
	}

	public void setSubCategoryDesc(String subCategoryDesc) {
		this.subCategoryDesc = subCategoryDesc;
	}

	public Boolean getStatus() {
		return status;
	}

	public void setStatus(Boolean status) {
		this.status = status;
	}

	@Column(name="status")
	private Boolean status=true;
	
}
