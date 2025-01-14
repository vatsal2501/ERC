package com.project.dao;
import java.util.List;
import com.project.model.VendorRegistrationVO;


public interface VendorRegistrationDAO {

	void insert(VendorRegistrationVO vendorRegistrationVO);
	
	List<VendorRegistrationVO> search();

	List<VendorRegistrationVO> findById(int id);
	
	List<Long> numberOfVendor();
}
