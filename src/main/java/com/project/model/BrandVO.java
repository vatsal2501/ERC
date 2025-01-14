package com.project.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="Brand_table")
public class BrandVO {
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="brand_id")
	private int brandId;
	
	@Column(name="brand_name")
	private String brandName;
	
	@Column(name="brand_description")
	private String brandDescription;
	
	public String getBrandDescription() {
		return brandDescription;
	}

	public void setBrandDescription(String brandDescription) {
		this.brandDescription = brandDescription;
	}

	@Column(name="status")
	private Boolean status=true;

	public Boolean getStatus() {
		return status;
	}

	public void setStatus(Boolean status) {
		this.status = status;
	}

	public int getBrandId() {
		return brandId;
	}

	public void setBrandId(int brandId) {
		this.brandId = brandId;
	}

	public String getBrandName() {
		return brandName;
	}

	public void setBrandName(String brandName) {
		this.brandName = brandName;
	}

}
