package com.project.dao;

import java.util.List;

import com.project.model.StateVO;

public interface StateDAO {
	
	void save(StateVO stateVO);

	List<StateVO> search();

	List<StateVO> findById(int id);
}
