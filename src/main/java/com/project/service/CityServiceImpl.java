package com.project.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.dao.CityDAO;
import com.project.model.CityVO;

@Service
@Transactional
public class CityServiceImpl implements CityService {

	@Autowired
	private CityDAO CityDAO;

	@Override
	public void save(CityVO CityVO) {
		this.CityDAO.save(CityVO);
	}

	@Override
	public List<CityVO> search() {
		return this.CityDAO.search();
	}

	@Override
	public List<CityVO> findById(int CityId) {
		return this.CityDAO.findById(CityId);
	}

}
