package com.project.dao;

import java.util.List;

import com.project.model.OrderVO;

public interface OrderDAO {
	
	void saveOrder(OrderVO orderVO);
	
	List<OrderVO> findOrderByUserId(int userId);
	
	List<Long> getCartOrderCount(Integer userId);

}
