package com.project.model;

import java.util.List;

import javax.persistence.Column;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Transient;

@Entity
@Table(name = "product_table")
public class ProductVO {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "product_id")
	private int productId;

	@ManyToOne
	private CategoryVO categoryVO;

	@ManyToOne
	private SubCategoryVO subCategoryVO;

	@ManyToOne
	@JoinColumn(name = "login_id")
	private LoginVO loginVO;

	@Transient
	private List<ProductFileVO> productFileList;

	@ManyToOne
	private BrandVO brandVO;

	@Column
	private String productName;
	@Column
	private String productDescription;
	@Column
	private String productSize;
	@Column
	private String productColor;
	@Column
	private String productPrice;
	@Column
	private String productQuantity;

	@Column
	private Boolean status = true;

	public int getProductId() {
		return productId;
	}

	public void setProductId(int productId) {
		this.productId = productId;
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

	public LoginVO getLoginVO() {
		return loginVO;
	}

	public void setLoginVO(LoginVO loginVO) {
		this.loginVO = loginVO;
	}

	public List<ProductFileVO> getProductFileList() {
		return productFileList;
	}

	public void setProductFileList(List<ProductFileVO> productFileList) {
		this.productFileList = productFileList;
	}

	public BrandVO getBrandVO() {
		return brandVO;
	}

	public void setBrandVO(BrandVO brandVO) {
		this.brandVO = brandVO;
	}

	public String getProductName() {
		return productName;
	}

	public void setProductName(String productName) {
		this.productName = productName;
	}

	public String getProductDescription() {
		return productDescription;
	}

	public void setProductDescription(String productDescription) {
		this.productDescription = productDescription;
	}

	public String getProductSize() {
		return productSize;
	}

	public void setProductSize(String productSize) {
		this.productSize = productSize;
	}

	public String getProductColor() {
		return productColor;
	}

	public void setProductColor(String productColor) {
		this.productColor = productColor;
	}

	public String getProductPrice() {
		return productPrice;
	}

	public void setProductPrice(String productPrice) {
		this.productPrice = productPrice;
	}

	public String getProductQuantity() {
		return productQuantity;
	}

	public void setProductQuantity(String productQuantity) {
		this.productQuantity = productQuantity;
	}

	public Boolean getStatus() {
		return status;
	}

	public void setStatus(Boolean status) {
		this.status = status;
	}

}
