package com.project.dao;

import java.util.List;

import com.project.model.CityVO;

public interface CityDAO {
	
	void save(CityVO cityVO);

	List<CityVO> search();

	List<CityVO> findById(int id);

}
