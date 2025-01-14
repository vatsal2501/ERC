package com.project.dao;

import java.util.ArrayList;


import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.model.VendorRegistrationVO;
@Repository
public class VendorRegistrationDAOImpl implements VendorRegistrationDAO{

	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	public void insert(VendorRegistrationVO vendorRegistrationVO) {
		
		System.out.println(":: in dao Insert()");
		try {
			Session session = sessionFactory.getCurrentSession();
			session.saveOrUpdate(vendorRegistrationVO);

		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	@SuppressWarnings("unchecked")
	@Override
	public List<VendorRegistrationVO> search() {
		List<VendorRegistrationVO> vendorRegistrationList = new ArrayList<VendorRegistrationVO>();
		try {
			Session session = sessionFactory.getCurrentSession();
			Query query = session.createQuery("from VendorRegistrationVO where status = true");
			vendorRegistrationList = (List<VendorRegistrationVO>) query.list();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return vendorRegistrationList;
	}
	
	@SuppressWarnings("unchecked")
	@Override
	public List<VendorRegistrationVO> findById(int vendorId) {
		List<VendorRegistrationVO> vendorRegistrationList = new ArrayList<VendorRegistrationVO>();
		try {
			Session session = sessionFactory.getCurrentSession();
			Query query = session.createQuery("from VendorRegistrationVO where status = true and vendor_id = " + vendorId);
			vendorRegistrationList = (List<VendorRegistrationVO>) query.list();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return vendorRegistrationList;
	}
	
	@Override
	public List<Long> numberOfVendor() {
		List<Long> vendorRegistrationList = new ArrayList<>();
		try {
			Session session = sessionFactory.getCurrentSession();
			Query query = session.createQuery("select count(*) from VendorRegistrationVO where status = true");
			vendorRegistrationList = (List<Long>) query.list();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return vendorRegistrationList;
	}
}
