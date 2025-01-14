package com.project.service;

import java.util.List;

import com.project.model.CategoryVO;

public interface CategoryService {

	void insert(CategoryVO catVO);

	List<CategoryVO> search();

	List<CategoryVO> findById(int cid);
}
