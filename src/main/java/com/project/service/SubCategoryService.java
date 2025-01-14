package com.project.service;
import java.util.List;

import com.project.model.SubCategoryVO;
public interface SubCategoryService {

	void insert(SubCategoryVO subCatVO);

	List<SubCategoryVO> search();

	List<SubCategoryVO> findById(int subCategoryId);

	List<SubCategoryVO> fetchSubCategoryListByCategoryId(int categoryId);
}
