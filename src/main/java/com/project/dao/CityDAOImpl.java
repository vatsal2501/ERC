package com.project.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.model.CityVO;

@Repository
public class CityDAOImpl implements CityDAO{
	

	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public void save(CityVO cityVO) {
		
		System.out.println(":: in dao Insert()");
		try {
			Session session = sessionFactory.getCurrentSession();
			session.saveOrUpdate(cityVO);

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<CityVO> search() {
		List<CityVO> cityList = new ArrayList<CityVO>();
		try {
			Session session = sessionFactory.getCurrentSession();
			Query query = session.createQuery("from CityVO where status = true");
			cityList = (List<CityVO>) query.list();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return cityList;
	}
	
	@SuppressWarnings("unchecked")
	@Override
	public List<CityVO> findById(int cityId) {
		List<CityVO> cityList = new ArrayList<CityVO>();
		try {
			Session session = sessionFactory.getCurrentSession();
			Query query = session.createQuery("from CityVO where status = true and cityId= " + cityId);
			cityList = (List<CityVO>) query.list();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return cityList;
	}

}
