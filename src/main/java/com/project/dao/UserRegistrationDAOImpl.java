package com.project.dao;

import java.util.ArrayList;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.project.model.UserRegistrationVO;

@Repository
public class UserRegistrationDAOImpl implements UserRegistrationDAO {

	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public void insert(UserRegistrationVO userRegistrationVO) {

		System.out.println(":: in dao Insert()");
		try {
			Session session = sessionFactory.getCurrentSession();
			session.saveOrUpdate(userRegistrationVO);

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<UserRegistrationVO> search() {
		List<UserRegistrationVO> userRegistrationList = new ArrayList<UserRegistrationVO>();
		try {
			Session session = sessionFactory.getCurrentSession();
			Query query = session.createQuery("from UserRegistrationVO where status = true");
			userRegistrationList = (List<UserRegistrationVO>) query.list();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return userRegistrationList;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<UserRegistrationVO> findById(int userId) {
		List<UserRegistrationVO> userRegistrationList = new ArrayList<UserRegistrationVO>();
		try {
			Session session = sessionFactory.getCurrentSession();
			Query query = session.createQuery("from UserRegistrationVO where status = true and  user_id = " + userId);
			userRegistrationList = (List<UserRegistrationVO>) query.list();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return userRegistrationList;
	}
}
