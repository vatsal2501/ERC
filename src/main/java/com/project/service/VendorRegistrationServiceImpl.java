package com.project.service;

import java.util.List;

import javax.transaction.Transactional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.project.dao.VendorRegistrationDAO;
import com.project.model.VendorRegistrationVO;

@Service
@Transactional
public class VendorRegistrationServiceImpl implements VendorRegistrationService {

	@Autowired
	private VendorRegistrationDAO vendorRegistrationDAO;

	@Override
	public void insert(VendorRegistrationVO vendorRegistrationVO) {

		System.out.println(":: in services - insert()");

		this.vendorRegistrationDAO.insert(vendorRegistrationVO);
	}

	@Override
	public List<VendorRegistrationVO> search() {
		return this.vendorRegistrationDAO.search();
	}

	@Override
	public List<VendorRegistrationVO> findById(int vendorId) {
		return this.vendorRegistrationDAO.findById(vendorId);
	}

	@Override
	public List<Long> numberOfVendor() {
		return this.vendorRegistrationDAO.numberOfVendor();
	}

}