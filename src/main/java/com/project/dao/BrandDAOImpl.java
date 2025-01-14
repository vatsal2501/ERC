package com.project.dao;
import java.util.ArrayList;

import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.project.model.BrandVO;


@Repository
public class BrandDAOImpl implements BrandDAO {

	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public void insert(BrandVO brandVO) {
		
		System.out.println(":: in dao Insert()");
		try {
			Session session = sessionFactory.getCurrentSession();
			session.saveOrUpdate(brandVO);

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<BrandVO> search() {
		List<BrandVO> brandList = new ArrayList<BrandVO>();
		try {
			Session session = sessionFactory.getCurrentSession();
			Query query = session.createQuery("from BrandVO where status = true");
			brandList = (List<BrandVO>) query.list();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return brandList;
	}
	
	@SuppressWarnings("unchecked")
	@Override
	public List<BrandVO> findById(int brandId) {
		List<BrandVO> brandList = new ArrayList<BrandVO>();
		try {
			Session session = sessionFactory.getCurrentSession();
			Query query = session.createQuery("from BrandVO where status = true and brand_id = " +brandId );
			brandList = (List<BrandVO>) query.list();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return brandList;
	}
}
