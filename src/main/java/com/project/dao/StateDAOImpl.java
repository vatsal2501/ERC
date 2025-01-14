package com.project.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.model.StateVO;

@Repository
public class StateDAOImpl implements StateDAO {
	

	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public void save(StateVO StateVO) {
		
		System.out.println(":: in dao Insert()");
		try {
			Session session = sessionFactory.getCurrentSession();
			session.saveOrUpdate(StateVO);

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<StateVO> search() {
		List<StateVO> stateList = new ArrayList<StateVO>();
		try {
			Session session = sessionFactory.getCurrentSession();
			Query query = session.createQuery("from StateVO where status = true");
			stateList = (List<StateVO>) query.list();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return stateList;
	}
	
	@SuppressWarnings("unchecked")
	@Override
	public List<StateVO> findById(int stateId) {
		List<StateVO> stateList = new ArrayList<StateVO>();
		try {
			Session session = sessionFactory.getCurrentSession();
			Query query = session.createQuery("from StateVO where status = true and stateId= " + stateId);
			stateList = (List<StateVO>) query.list();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return stateList;
	}

}
