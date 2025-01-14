package com.project.controller;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.project.model.LoginVO;
import com.project.model.ProductVO;
import com.project.model.ReviewVO;
import com.project.service.FeedbackService;
import com.project.service.LoginService;
import com.project.utils.BaseMethods;

@Controller
public class FeedbackController {
	
	@Autowired
	private BaseMethods baseMethods;

	@Autowired
	private LoginService loginService;
	
	@Autowired
	private FeedbackService feedbackService;

	@PostMapping(value="user/addReview")
	public ModelAndView saveReview( @RequestParam String review, @RequestParam String reviewDescription, @RequestParam String productId ){
		
		int reviews= Integer.parseInt(review);
		int productIdValue= Integer.parseInt(productId);
		
		
		System.out.println("in adddReviewController ::::"+productId);
		ReviewVO reviewVO = new ReviewVO();
			reviewVO.setReview(reviews);
			reviewVO.setReviewDescription(reviewDescription);
			
		ProductVO productVO = new ProductVO();
		productVO.setProductId(productIdValue);
		
		String username = baseMethods.getUsername();
		List ls = loginService.searchByUserName(username);
		LoginVO loginVO = (LoginVO) ls.get(0);
		
		DateFormat fmt = new SimpleDateFormat("dd/MM/yyy");
		Date date=new Date();
		
		String dateNow =  fmt.format(date);
		
		reviewVO.setLoginVO(loginVO);
		reviewVO.setDate(dateNow);
		reviewVO.setProductVO(productVO);
		
		this.feedbackService.saveReview(reviewVO);
		
		return new ModelAndView("redirect:/user/myOrders");
	}	
}

