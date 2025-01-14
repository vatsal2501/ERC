package com.project.dao;
import java.util.ArrayList;

import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.project.model.CategoryVO;


@Repository
public class CategoryDAOImpl implements CategoryDAO {

	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public void insert(CategoryVO categoryVO) {
		
		System.out.println(":: in dao Insert()");
		try {
			Session session = sessionFactory.getCurrentSession();
			session.saveOrUpdate(categoryVO);

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<CategoryVO> search() {
		List<CategoryVO> categoryList = new ArrayList<CategoryVO>();
		try {
			Session session = sessionFactory.getCurrentSession();
			Query query = session.createQuery("from CategoryVO where status = true");
			categoryList = (List<CategoryVO>) query.list();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return categoryList;
	}
	
	@SuppressWarnings("unchecked")
	@Override
	public List<CategoryVO> findById(int cid) {
		List<CategoryVO> categoryList = new ArrayList<CategoryVO>();
		try {
			Session session = sessionFactory.getCurrentSession();
			Query query = session.createQuery("from CategoryVO where status = true and c_id = " + cid);
			categoryList = (List<CategoryVO>) query.list();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return categoryList;
	}
}
