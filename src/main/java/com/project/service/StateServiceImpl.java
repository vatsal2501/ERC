package com.project.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.dao.StateDAO;
import com.project.model.StateVO;

@Service
@Transactional
public class StateServiceImpl implements StateService {
	

	@Autowired
	private StateDAO StateDAO;

	@Override
	public void save(StateVO StateVO) {
		
		this.StateDAO.save(StateVO);
	}

	@Override
	public List<StateVO> search() {
		return this.StateDAO.search();
	}

	@Override
	public List<StateVO> findById(int stateId) {
		return this.StateDAO.findById(stateId);
	}

}
