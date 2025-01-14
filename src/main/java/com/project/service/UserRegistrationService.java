package com.project.service;
import java.util.List;

import com.project.model.UserRegistrationVO;

public interface UserRegistrationService {

	void insert(UserRegistrationVO userRegVO);

	List<UserRegistrationVO> search();

	List<UserRegistrationVO> findById(int userId);
}
