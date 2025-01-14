package com.project.service;
import java.util.List;

import com.project.model.ComplaintVO;
public interface ComplaintService {

	void insert(ComplaintVO complaintVo);

	List<ComplaintVO> search();

	List<ComplaintVO> findById(int complaintId);

	List<ComplaintVO> complaintFindByLoginid(int loginId);
}
