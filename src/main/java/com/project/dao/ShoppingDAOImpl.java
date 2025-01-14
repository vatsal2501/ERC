package com.project.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.model.AddToCartVO;
import com.project.model.CategoryVO;
import com.project.model.ProductFileVO;
import com.project.model.ProductVO;
import com.project.model.SubCategoryVO;

@Repository
public class ShoppingDAOImpl implements ShoppingDAO  {

	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	public List<CategoryVO> searchCategory(){
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
	
	@Override
	public List<SubCategoryVO> searchSubCategory(int id){
		List<SubCategoryVO> subCategoryList = new ArrayList<SubCategoryVO>();
		try {
			Session session = sessionFactory.getCurrentSession();
			Query query = session.createQuery("from SubCategoryVO where status = true and categoryVO= "+id);
			subCategoryList = (List<SubCategoryVO>) query.list();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return subCategoryList;
	}
	
	@Override
	public List<ProductVO> searchProduct(int categoryId,int subcategoryId){
		List<ProductVO> productVOList = new ArrayList<ProductVO>();
		try {
			Session session = sessionFactory.getCurrentSession();
			Query query = session.createQuery("from ProductVO where status = true and categoryVO = '"+categoryId+"' and subCategoryVO = "+subcategoryId);
			productVOList = (List<ProductVO>) query.list();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return productVOList;
	}
	
	@Override
	public List<ProductFileVO> searchProductFileList(int productId){
		List<ProductFileVO> productFileVOList = new ArrayList<ProductFileVO>();
		try {
			Session session = sessionFactory.getCurrentSession();
			Query query = session.createQuery("from ProductFileVO where productVO = "+productId);
			productFileVOList = (List<ProductFileVO>) query.list();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return productFileVOList ;
	}
	
	@Override
	public void saveCart(AddToCartVO addToCartVO){
		System.out.println(":: in shoppingdao saveaddToCart()");
		try {
			Session session = sessionFactory.getCurrentSession();
			session.saveOrUpdate(addToCartVO);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	@Override
	public List<AddToCartVO> searchOrders(int id){
		List<AddToCartVO> orderList = new ArrayList<AddToCartVO>();
		try {
			Session session = sessionFactory.getCurrentSession();
			Query query = session.createQuery("from AddToCartVO where vendorLoginVO= "+id+" And placed="+false);
			orderList = (List<AddToCartVO>) query.list();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return orderList;
	}
	
	@Override
	public List<AddToCartVO> searchPlacedOrders(int id){
		List<AddToCartVO> orderList = new ArrayList<AddToCartVO>();
		try {
			Session session = sessionFactory.getCurrentSession();
			Query query = session.createQuery("from AddToCartVO where vendorLoginVO= "+id+" And placed="+true);
			orderList = (List<AddToCartVO>) query.list();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return orderList;
	}
	
	@Override
	public List<AddToCartVO> searchOrdersByUserId(int userId){
		List<AddToCartVO> orderList = new ArrayList<AddToCartVO>();
		try {
			Session session = sessionFactory.getCurrentSession();
			Query query = session.createQuery("from AddToCartVO where loginVO= "+userId+" And placed="+false);
			orderList = (List<AddToCartVO>) query.list();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return orderList;
	}

	@Override
	public List<AddToCartVO> searchOrder(int productId, int userId, boolean isPlaced) {
		List<AddToCartVO> orderList = new ArrayList<AddToCartVO>();
		try {
			Session session = sessionFactory.getCurrentSession();
			Query query = session.createQuery("from AddToCartVO where  productVO = "+productId+" AND loginVO = "+userId+" AND placed = "+isPlaced);
			orderList = (List<AddToCartVO>) query.list();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return orderList;
	}

	@Override
	public void deleteProductFromCart(int cartId) {
		try {
			Session session = sessionFactory.getCurrentSession();
			Query query = session.createQuery("delete from AddToCartVO where cartId= "+cartId);
			query.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	@Override
	public void clearCart() {
		try {
			Session session = sessionFactory.getCurrentSession();
			Query query = session.createQuery("delete from AddToCartVO where placed="+false);
			query.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	@Override
	public List<AddToCartVO> searchOrdersByOrderId(int orderId){
		List<AddToCartVO> orderList = new ArrayList<AddToCartVO>();
		try {
			Session session = sessionFactory.getCurrentSession();
			Query query = session.createQuery("from AddToCartVO where orderVO = "+orderId+" AND placed = "+true);
			orderList = (List<AddToCartVO>) query.list();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return orderList;
	}

}
