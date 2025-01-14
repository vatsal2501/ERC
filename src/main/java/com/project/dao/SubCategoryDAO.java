package com.project.dao;
import java.util.List;


import com.project.model.SubCategoryVO;


public interface SubCategoryDAO {

	void insert(SubCategoryVO categoryVO);

	List<SubCategoryVO> search();

	List<SubCategoryVO> findById(int id);

	List<SubCategoryVO> fetchSubCategoryListByCategoryId(int categoryId);
}
