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
@Table(name = "product_file_table")
public class ProductFileVO {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "product_file_id")
	private int productFileId;

	@Column
	private String productFileName;

	@Column
	private String productFilePath;

	@ManyToOne
	@JoinColumn(name = "product_id")
	private ProductVO productVO;

	public int getProductFileId() {
		return productFileId;
	}

	public void setProductFileId(int productFileId) {
		this.productFileId = productFileId;
	}

	public String getProductFileName() {
		return productFileName;
	}

	public void setProductFileName(String productFileName) {
		this.productFileName = productFileName;
	}

	public String getProductFilePath() {
		return productFilePath;
	}

	public void setProductFilePath(String productFilePath) {
		this.productFilePath = productFilePath;
	}

	public ProductVO getProductVO() {
		return productVO;
	}

	public void setProductVO(ProductVO productVO) {
		this.productVO = productVO;
	}

}
