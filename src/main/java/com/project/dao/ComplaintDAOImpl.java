package com.project.dao;

import java.util.ArrayList;

import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.model.ComplaintVO;


@Repository
public class ComplaintDAOImpl implements ComplaintDAO {

	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public void insert(ComplaintVO complaintVO) {

		System.out.println(":: in dao Insert()");
		try {
			Session session = sessionFactory.getCurrentSession();
			session.saveOrUpdate(complaintVO);

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<ComplaintVO> search() {
		List<ComplaintVO> complaintList = new ArrayList<ComplaintVO>();
		try {
			Session session = sessionFactory.getCurrentSession();
			Query query = session.createQuery("from ComplaintVO where status = true");
			complaintList = (List<ComplaintVO>) query.list();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return complaintList;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<ComplaintVO> findById(int complaintId) {
		List<ComplaintVO> complaintList = new ArrayList<ComplaintVO>();
		try {
			Session session = sessionFactory.getCurrentSession();
			Query query = session.createQuery("from ComplaintVO where status = true and complaintId ="+complaintId);
			complaintList = (List<ComplaintVO>) query.list();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return complaintList;
	}
	

	@SuppressWarnings("unchecked")
	@Override
	public List<ComplaintVO> complaintFindByLoginid(int loginId) {
		List<ComplaintVO> complaintList = new ArrayList<ComplaintVO>();
		try {
			Session session = sessionFactory.getCurrentSession();
			Query query = session.createQuery("from ComplaintVO where status = true and loginVO ="+loginId);
			complaintList = (List<ComplaintVO>) query.list();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return complaintList;
	}
}
