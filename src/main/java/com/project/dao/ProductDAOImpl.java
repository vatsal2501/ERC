package com.project.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.model.ProductFileVO;
import com.project.model.ProductVO;

@Repository
public class ProductDAOImpl implements ProductDAO {

	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public void save(ProductVO productVO) {

		System.out.println(":: in dao Insert()");
		try {
			Session session = sessionFactory.getCurrentSession();
			session.saveOrUpdate(productVO);

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<ProductVO> search(int loginId) {
		List<ProductVO> productList = new ArrayList<ProductVO>();
		try {
			Session session = sessionFactory.getCurrentSession();
			Query query = session.createQuery(
					"from ProductVO where status = true and categoryVO.status = true and subCategoryVO.status = true and loginVO =  "
							+ loginId);
			productList = (List<ProductVO>) query.list();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return productList;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<ProductVO> productSearch() {
		List<ProductVO> productList = new ArrayList<ProductVO>();
		try {
			Session session = sessionFactory.getCurrentSession();
			Query query = session.createQuery("from ProductVO where status = true");
			productList = (List<ProductVO>) query.list();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return productList;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<ProductVO> findById(int productId) {
		List<ProductVO> productList = new ArrayList<ProductVO>();
		try {
			Session session = sessionFactory.getCurrentSession();
			Query query = session.createQuery("from ProductVO where status = true and product_id = " + productId);
			productList = (List<ProductVO>) query.list();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return productList;
	}

	@Override
	public void save(ProductFileVO fileVO) {
		try {
			Session session = sessionFactory.getCurrentSession();
			session.saveOrUpdate(fileVO);

		} catch (Exception e) {
			e.printStackTrace();
		}

	}

	@SuppressWarnings("unchecked")
	@Override
	public List<ProductFileVO> fetchProductImagesById(int productId) {
		List<ProductFileVO> productList = new ArrayList<ProductFileVO>();
		try {
			Session session = sessionFactory.getCurrentSession();
			Query query = session.createQuery("from ProductFileVO where product_id = " + productId);
			productList = (List<ProductFileVO>) query.list();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return productList;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<ProductFileVO> fetchFilesByProductId(int productId) {
		List<ProductFileVO> productList = new ArrayList<ProductFileVO>();
		try {
			Session session = sessionFactory.getCurrentSession();
			Query query = session.createQuery("from ProductFileVO where product_id = " + productId);
			productList = (List<ProductFileVO>) query.list();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return productList;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<ProductVO> fetchProductListByCategoryAndSubCategoryId(int categoryId, int subCategoryId) {
		List<ProductVO> productList = new ArrayList<ProductVO>();
		try {
			Session session = sessionFactory.getCurrentSession();
			Query query = session.createQuery("from ProductVO where status = true and categoryVO = '"+categoryId+"' and subCategoryVO ='"+subCategoryId+"'");
			productList = (List<ProductVO>) query.list();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return productList;
	}
}
