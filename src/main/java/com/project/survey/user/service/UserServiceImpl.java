package com.project.survey.user.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.project.survey.user.dao.UserDAO;
import com.project.survey.user.dto.UserDTO;

@Service
public class UserServiceImpl implements UserService {
	
	@Inject
	UserDAO userDAO;

	// 로그인 처리
	@Override
	public UserDTO login(UserDTO userDTO) throws Exception {
		return userDAO.login(userDTO);
	}

}
