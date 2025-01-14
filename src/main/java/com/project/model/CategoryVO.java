package com.project.model;
import javax.persistence.Column;


import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="Category_table")
public class CategoryVO {
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="c_id")
	private int cid;
	
	@Column(name="c_name")
	private String categoryName;
	
	@Column(name="c_desc")
	private String categoryDescription;
	
	@Column(name="status")
	private Boolean status=true;

	public int getCid() {
		return cid;
	}

	public void setCid(int cid) {
		this.cid = cid;
	}

	public String getCategoryName() {
		return categoryName;
	}

	public void setCategoryName(String categoryName) {
		this.categoryName = categoryName;
	}

	public String getCategoryDescription() {
		return categoryDescription;
	}

	public void setCategoryDescription(String categoryDescription) {
		this.categoryDescription = categoryDescription;
	}

	public Boolean getStatus() {
		return status;
	}

	public void setStatus(Boolean status) {
		this.status = status;
	}

	
	
}

