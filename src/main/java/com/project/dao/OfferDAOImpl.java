package com.project.dao;

import java.util.ArrayList;

import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.model.OfferVO;

@Repository
public class OfferDAOImpl implements OfferDAO {

	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public void insert(OfferVO offerVO) {

		System.out.println(":: in offerdao insert()");
		try {
			Session session = sessionFactory.getCurrentSession();
			session.saveOrUpdate(offerVO);

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<OfferVO> search() {
		List<OfferVO> offerList = new ArrayList<OfferVO>();
		try {
			Session session = sessionFactory.getCurrentSession();
			Query query = session.createQuery("from OfferVO where status = true");
			offerList = (List<OfferVO>) query.list();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return offerList;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<OfferVO> findById(int offerId) {
		List<OfferVO> offerList = new ArrayList<OfferVO>();
		try {
			Session session = sessionFactory.getCurrentSession();
			Query query = session.createQuery("from OfferVO where status = true and offerId = " + offerId);
			offerList = (List<OfferVO>) query.list();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return offerList;
	}
	
	@SuppressWarnings("unchecked")
	@Override
	public List<OfferVO> findByLoginId(int loginId) {
		List<OfferVO> offerList = new ArrayList<OfferVO>();
		try {
			Session session = sessionFactory.getCurrentSession();
			Query query = session.createQuery("from OfferVO where status = true and productVO.loginVO = " + loginId);
			offerList = (List<OfferVO>) query.list();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return offerList;
	}
}
