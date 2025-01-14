package com.project.service;

import java.util.List;

import com.project.model.ProductFileVO;
import com.project.model.ProductVO;

public interface ProductService {

	void save(ProductVO fileVO);

	void save(ProductFileVO fileVO);

	List<ProductVO> search(int i);

	List<ProductVO> findById(int productId);

	List<ProductFileVO> fetchProductImagesById(int productId);

	List<ProductVO> productSearch();

	List<ProductFileVO> fetchFilesByProductId(int productId);

	List<ProductVO> fetchProductListByCategoryAndSubCategoryId(int categoryId, int subCategoryId);
}
