package com.project.service;
import java.util.List;

import com.project.model.OfferVO;
public interface OfferService {

	void insert(OfferVO offerVo);

	List<OfferVO> search();

	List<OfferVO> findById(int offerId);
	
	List<OfferVO> findByLoginId(int offerId);
}
