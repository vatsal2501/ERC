package com.project.dao;

import java.util.List;

import com.project.model.ProductFileVO;
import com.project.model.ProductVO;

public interface ProductDAO {

	void save(ProductVO productVO);

	List<ProductVO> search(int loginId);

	List<ProductVO> findById(int id);

	void save(ProductFileVO fileVO);

	List<ProductFileVO> fetchProductImagesById(int productId);

	List<ProductVO> productSearch();

	List<ProductFileVO> fetchFilesByProductId(int productId);

	List<ProductVO> fetchProductListByCategoryAndSubCategoryId(int categoryId, int subCategoryId);

}
