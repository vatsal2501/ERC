package com.project.dao;

import java.util.List;

import com.project.model.UserRegistrationVO;

public interface UserRegistrationDAO {

	void insert(UserRegistrationVO userRegistrationVO);

	List<UserRegistrationVO> search();

	List<UserRegistrationVO> findById(int id);
}
