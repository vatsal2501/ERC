package com.project.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.dao.OrderDAO;
import com.project.model.OrderVO;

@Service
@Transactional
public class OrderServiceImpl implements OrderService{

	@Autowired
	private OrderDAO orderDAO;

	@Override
	public void saveOrder(OrderVO orderVO) {
		this.orderDAO.saveOrder(orderVO);
	}

	@Override
	public List<OrderVO> findOrderByUserId(int userId) {
		return this.orderDAO.findOrderByUserId(userId);
	}

	@Override
	public List<Long> getCartOrderCount(Integer userId) {
		return this.orderDAO.getCartOrderCount(userId);
	}

}
