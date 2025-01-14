package com.project.service;

import java.util.List;

import com.project.model.CityVO;

public interface CityService {
	
	void save(CityVO CityVO);

	List<CityVO> search();

	List<CityVO> findById(int CityId);
}
