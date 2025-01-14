package com.project.service;

import java.util.List;

import com.project.model.VendorRegistrationVO;

public interface VendorRegistrationService {

	void insert(VendorRegistrationVO vendorRegVO);

	List<VendorRegistrationVO> search();

	List<VendorRegistrationVO> findById(int vendorId);
	
	List<Long> numberOfVendor();

}
