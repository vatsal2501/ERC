package com.project.service;

import java.util.List;

import com.project.model.StateVO;

public interface StateService {
	
	void save(StateVO stateVO);

	List<StateVO> search();

	List<StateVO> findById(int stateId);
}
