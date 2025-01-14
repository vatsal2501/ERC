package com.project.service;

import java.util.List;

import javax.transaction.Transactional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.dao.ComplaintDAO;
import com.project.model.ComplaintVO;

@Service
@Transactional
public class ComplaintServiceImpl implements ComplaintService {

	@Autowired
	private ComplaintDAO complaintDAO;

	@Override
	public void insert(ComplaintVO complaintVO) {

		System.out.println(":: in services - insert()");

		this.complaintDAO.insert(complaintVO);
	}

	@Override
	public List<ComplaintVO> search() {
		return this.complaintDAO.search();
	}

	@Override
	public List<ComplaintVO> findById(int compalaintId) {
		return this.complaintDAO.findById(compalaintId);
	}

	public List<ComplaintVO> complaintFindByLoginid(int loginId){
		return this.complaintDAO.complaintFindByLoginid(loginId); 
	}

}
