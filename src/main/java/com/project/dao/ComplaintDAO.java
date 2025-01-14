package com.project.dao;
import java.util.List;


import com.project.model.ComplaintVO;


public interface ComplaintDAO {

	void insert(ComplaintVO complaintVO);

	List<ComplaintVO> search();

	List<ComplaintVO> findById(int id);
	
	List<ComplaintVO> complaintFindByLoginid(int loginId); 
}
