package com.project.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.project.model.AddToCartVO;
import com.project.model.LoginVO;
import com.project.model.OrderVO;
import com.project.model.ProductFileVO;
import com.project.service.LoginService;
import com.project.service.OrderService;
import com.project.service.ShoppingService;
import com.project.utils.BaseMethods;

@RestController
public class OrderController {

	@Autowired
	private ShoppingService shoppingService;

	@Autowired
	private LoginService loginService;

	@Autowired
	private BaseMethods baseMethods;

	@Autowired
	private OrderService orderService;

	@GetMapping(value = "vendor/viewOrders")
	public ModelAndView add() {

		System.out.println("in  -SearchOrder******()");
		String username = baseMethods.getUsername();
		List ls = loginService.searchByUserName(username);
		LoginVO loginVO = (LoginVO) ls.get(0);

		System.out
				.println("loginVO id:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::" + loginVO.getId());

		List<AddToCartVO> orderList = this.shoppingService.searchPlacedOrders(loginVO.getId());// searching
																								// placed
																								// oreder
																								// by
																								// user
																								// id

		return new ModelAndView("vendor/orderDetails", "orderList", orderList);

	}

	@GetMapping(value = "user/myOrders")
	public ModelAndView myOrders() {

		String username = baseMethods.getUsername();
		List ls = loginService.searchByUserName(username);
		LoginVO loginVO = (LoginVO) ls.get(0);

		List<OrderVO> orderListForUser = this.orderService.findOrderByUserId(loginVO.getId());
		System.out.println("::::::here");
		for (OrderVO order : orderListForUser) {

			List<AddToCartVO> userCartOrderList = this.shoppingService.searchOrdersByOrderId(order.getId());

			for (AddToCartVO cartProduct : userCartOrderList) {
				List<ProductFileVO> productFiles = this.shoppingService
						.searchProductFileList(cartProduct.getProductVO().getProductId());

				cartProduct.getProductVO().setProductFileList(productFiles);
			}
			order.setAddToCartVOList(userCartOrderList);
		}

		return new ModelAndView("user/myOrders", "orderListForUser", orderListForUser);
	}
	
	@GetMapping(value = "user/cartOrderCount")
	public ResponseEntity cartOrderCount(){
		
		String username = baseMethods.getUsername();
		List<LoginVO> ls = loginService.searchByUserName(username);

		List<Long> count = this.orderService.getCartOrderCount(ls.get(0).getId());
		
		System.out.println(count);
		
		return new ResponseEntity(count,HttpStatus.OK);
	}
}
