package com.project.service;

import java.util.List;

import javax.transaction.Transactional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.project.dao.UserRegistrationDAO;
import com.project.model.UserRegistrationVO;

@Service
@Transactional
public class UserRegistrationServiceImpl implements UserRegistrationService {

	@Autowired
	private UserRegistrationDAO userRegistrationDAO;

	@Override
	public void insert(UserRegistrationVO userRegistrationVO) {

		System.out.println(":: in services - insert()");

		this.userRegistrationDAO.insert(userRegistrationVO);
	}

	@Override
	public List<UserRegistrationVO> search() {
		return this.userRegistrationDAO.search();
	}

	@Override
	public List<UserRegistrationVO> findById(int userId) {
		return this.userRegistrationDAO.findById(userId);
	}

}
