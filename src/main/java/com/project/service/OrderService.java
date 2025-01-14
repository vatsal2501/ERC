package com.project.service;

import java.util.List;

import com.project.model.OrderVO;

public interface OrderService {
	
	void saveOrder(OrderVO orderVO);
	
	List<OrderVO> findOrderByUserId(int userId);
	
	List<Long> getCartOrderCount(Integer userId);
}
