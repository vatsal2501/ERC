package com.project.dao;
import java.util.List;

import com.project.model.BrandVO;


public interface BrandDAO {

	void insert(BrandVO brandVO);

	List<BrandVO> search();

	List<BrandVO> findById(int id);
}
