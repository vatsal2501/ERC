package com.project.service;
import java.util.List;

import javax.transaction.Transactional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.project.dao.ProductDAO;
import com.project.model.ProductFileVO;
import com.project.model.ProductVO;


@Service
@Transactional
public class ProductServiceImpl implements ProductService {

	@Autowired
	private ProductDAO productDAO;

	@Override
	public void save(ProductVO productVO) {
		
		System.out.println(":: in services - insert()");
		
		this.productDAO.save(productVO);
	}

	@Override
	public List<ProductVO> search(int loginId) {
		return this.productDAO.search(loginId);
	}

	@Override
	public List<ProductVO> findById(int productId) {
		return this.productDAO.findById(productId);
	}

	@Override
	public void save(ProductFileVO fileVO) {
		this.productDAO.save(fileVO);
	}

	@Override
	public List<ProductFileVO> fetchProductImagesById(int productId) {
		return this.productDAO.fetchProductImagesById(productId);
	}

	@Override
	public List<ProductVO> productSearch() {
		return this.productDAO.productSearch();
	}

	@Override
	public List<ProductFileVO> fetchFilesByProductId(int productId) {
		// TODO Auto-generated method stub
		return this.productDAO.fetchFilesByProductId(productId);
	}

	@Override
	public List<ProductVO> fetchProductListByCategoryAndSubCategoryId(int categoryId, int subCategoryId) {
		// TODO Auto-generated method stub
		return this.productDAO.fetchProductListByCategoryAndSubCategoryId(categoryId,subCategoryId);
	}

}
