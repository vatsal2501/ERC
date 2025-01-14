package com.project.service;

import java.util.List;

import com.project.model.BrandVO;

public interface BrandService {

	void insert(BrandVO brandVo);

	List<BrandVO> search();

	List<BrandVO> findById(int brandId);
}
