package com.project.service;
import java.util.List;

import javax.transaction.Transactional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.project.dao.CategoryDAO;
import com.project.model.CategoryVO;

@Service
@Transactional
public class CategoryServiceImpl implements CategoryService {

	@Autowired
	private CategoryDAO categoryDAO;

	@Override
	public void insert(CategoryVO categoryVO) {
		
		System.out.println(":: in services - insert()");
		
		this.categoryDAO.insert(categoryVO);
	}

	@Override
	public List<CategoryVO> search() {
		return this.categoryDAO.search();
	}

	@Override
	public List<CategoryVO> findById(int cid) {
		return this.categoryDAO.findById(cid);
	}

}
