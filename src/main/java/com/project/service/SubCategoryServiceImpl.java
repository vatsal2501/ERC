package com.project.service;
import java.util.List;


import javax.transaction.Transactional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.project.dao.SubCategoryDAO;
import com.project.model.SubCategoryVO;


@Service
@Transactional
public class SubCategoryServiceImpl implements SubCategoryService {

	@Autowired
	private SubCategoryDAO subCategoryDAO;

	@Override
	public void insert(SubCategoryVO subCategoryVO) {
		
		System.out.println(":: in services - insert()");
		
		this.subCategoryDAO.insert(subCategoryVO);
	}

	@Override
	public List<SubCategoryVO> search() {
		return this.subCategoryDAO.search();
	}

	@Override
	public List<SubCategoryVO> findById(int subCategoryId) {
		return this.subCategoryDAO.findById(subCategoryId);
	}

	@Override
	public List<SubCategoryVO> fetchSubCategoryListByCategoryId(int categoryId) {
		// TODO Auto-generated method stub
		return this.subCategoryDAO.fetchSubCategoryListByCategoryId(categoryId);
	}

}
