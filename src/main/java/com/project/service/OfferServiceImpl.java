package com.project.service;

import java.util.List;

import javax.transaction.Transactional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.project.dao.OfferDAO;
import com.project.model.OfferVO;

@Service
@Transactional
public class OfferServiceImpl implements OfferService {

	@Autowired
	private OfferDAO offerDAO;

	@Override
	public void insert(OfferVO offerVO) {

		System.out.println(":: in services - insert()");

		this.offerDAO.insert(offerVO);
	}

	@Override
	public List<OfferVO> search() {
		return this.offerDAO.search();
	}

	@Override
	public List<OfferVO> findById(int offerId) {
		return this.offerDAO.findById(offerId);
	}
	
	@Override
	public List<OfferVO> findByLoginId(int offerId){
		return this.offerDAO.findByLoginId(offerId);
	}

}
