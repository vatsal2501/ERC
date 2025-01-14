package com.project.dao;
import java.util.List;

import com.project.model.OfferVO;


public interface OfferDAO {

	void insert(OfferVO  offerVO);

	List<OfferVO> search();

	List<OfferVO> findById(int id);
	
	List<OfferVO> findByLoginId(int offerId);
}
