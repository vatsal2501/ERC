package com.project.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.model.OrderVO;
import com.project.model.VendorRegistrationVO;

@Repository
public class OrderDAOImpl implements OrderDAO{
	
	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	public void saveOrder(OrderVO orderVO){
		System.out.println(":: in orderdao save()");
		try {
			Session session = sessionFactory.getCurrentSession();
			session.saveOrUpdate(orderVO);

		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	@Override
	public List<OrderVO> findOrderByUserId(int userId) {
		List<OrderVO> orderList = new ArrayList<OrderVO>();
		try {
			Session session = sessionFactory.getCurrentSession();
			Query query = session.createQuery("from OrderVO where loginVO = " + userId);
			orderList = (List<OrderVO>) query.list();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return orderList;
	}

	@Override
	public List<Long> getCartOrderCount(Integer userId){
		List<Long> orderCountList = new ArrayList<>();
		try {
			Session session = sessionFactory.getCurrentSession();
			Query query = session.createQuery("SELECT COUNT(*) FROM AddToCartVO WHERE is_placed = "+ false +" AND loginVO = " + userId);
			orderCountList = (List<Long>) query.list();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return orderCountList;
	}
}
