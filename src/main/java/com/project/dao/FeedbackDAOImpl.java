package com.project.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.model.ReviewVO;

@Repository
public class FeedbackDAOImpl implements FeedbackDAO {
	
	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	public void saveReview(ReviewVO reviewVO) {
		try {
			Session session = sessionFactory.getCurrentSession();
			session.saveOrUpdate(reviewVO);

		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
}
