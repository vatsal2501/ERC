package com.project.dao;
import java.util.List;

import com.project.model.CategoryVO;


public interface CategoryDAO {

	void insert(CategoryVO categoryVO);

	List<CategoryVO> search();

	List<CategoryVO> findById(int id);
}
