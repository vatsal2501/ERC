package com.project.service;
import java.util.List;

import javax.transaction.Transactional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.project.dao.BrandDAO;
import com.project.model.BrandVO;

@Service
@Transactional
public class BrandServiceImpl implements BrandService {

	@Autowired
	private BrandDAO brandDAO;

	@Override
	public void insert(BrandVO brandVO) {
		
		System.out.println(":: in services - insert()");
		
		this.brandDAO.insert(brandVO);
	}

	@Override
	public List<BrandVO> search() {
		return this.brandDAO.search();
	}

	@Override
	public List<BrandVO> findById(int brandId) {
		return this.brandDAO.findById(brandId);
	}

}
