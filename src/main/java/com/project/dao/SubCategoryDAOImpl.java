package com.project.dao;

import java.util.ArrayList;

import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.project.model.SubCategoryVO;

@Repository
public class SubCategoryDAOImpl implements SubCategoryDAO {

	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public void insert(SubCategoryVO subCategoryVO) {

		System.out.println(":: in dao Insert()");
		try {
			Session session = sessionFactory.getCurrentSession();
			session.saveOrUpdate(subCategoryVO);

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<SubCategoryVO> search() {
		List<SubCategoryVO> subCategoryList = new ArrayList<SubCategoryVO>();
		try {
			Session session = sessionFactory.getCurrentSession();
			Query query = session.createQuery("from SubCategoryVO where status = true and categoryVO.status = true");
			subCategoryList = (List<SubCategoryVO>) query.list();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return subCategoryList;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<SubCategoryVO> findById(int subCategoryId) {
		List<SubCategoryVO> subCategoryList = new ArrayList<SubCategoryVO>();
		try {
			Session session = sessionFactory.getCurrentSession();
			Query query = session
					.createQuery("from SubCategoryVO where status = true and Subcat_Id = " + subCategoryId);
			subCategoryList = (List<SubCategoryVO>) query.list();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return subCategoryList;
	}

	@Override
	public List<SubCategoryVO> fetchSubCategoryListByCategoryId(int categoryId) {
		List<SubCategoryVO> subCategoryList = new ArrayList<SubCategoryVO>();
		try {
			Session session = sessionFactory.getCurrentSession();
			Query query = session
					.createQuery("from SubCategoryVO where status = true and c_id = " + categoryId);
			subCategoryList = (List<SubCategoryVO>) query.list();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return subCategoryList;
	}
}
