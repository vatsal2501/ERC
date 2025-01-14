package com.project.service;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.dao.FeedbackDAO;
import com.project.model.ReviewVO;

@Service
@Transactional
public class FeedbackServiceImpl implements FeedbackService {
	
	@Autowired
	private FeedbackDAO feedBackDAO;
	
	@Override
	public 	void saveReview(ReviewVO reviewVO){
		this.feedBackDAO.saveReview(reviewVO);
	}
}
