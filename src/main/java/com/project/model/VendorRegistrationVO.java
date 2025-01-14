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
@Table(name = "Vendor_Registration")
public class VendorRegistrationVO {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "vendor_id")
	private int vendorId;

	@Column(name = "vendor_name")
	private String vendorName;

	@Column(name = "business_name")
	private String businessName;
	


	@Column(name = "business_email")
	private String businessEmail;

	@Column(name = "mobile_number")
	private String mobileNumber;
	
	

	@Column(name = "business_address")
	private String businessAddress;
	
	@Column(name = "Approve")
	private Boolean approve;

	public Boolean getApprove() {
		return approve;
	}

	public void setApprove(Boolean approve) {
		this.approve = approve;
	}

	@ManyToOne
	@JoinColumn(name = "login_id")
	private LoginVO loginVO;

	public LoginVO getLoginVO() {
		return loginVO;
	}

	public void setLoginVO(LoginVO loginVO) {
		this.loginVO = loginVO;
	}

	@Column(name = "status")
	private boolean status = true;

	public int getVendorId() {
		return vendorId;
	}

	public void setVendorId(int vendorId) {
		this.vendorId = vendorId;
	}

	public String getVendorName() {
		return vendorName;
	}

	public void setVendorName(String vendorName) {
		this.vendorName = vendorName;
	}

	public String getBusinessName() {
		return businessName;
	}

	public void setBusinessName(String businessName) {
		this.businessName = businessName;
	}

	public String getBusinessEmail() {
		return businessEmail;
	}

	public void setBusinessEmail(String businessEmail) {
		this.businessEmail = businessEmail;
	}

	public String getMobileNumber() {
		return mobileNumber;
	}

	public void setMobileNumber(String mobileNumber) {
		this.mobileNumber = mobileNumber;
	}

	public String getBusinessAddress() {
		return businessAddress;
	}

	public void setBusinessAddress(String businessAddress) {
		this.businessAddress = businessAddress;
	}

	public boolean isStatus() {
		return status;
	}

	public void setStatus(boolean status) {
		this.status = status;
	}

}
