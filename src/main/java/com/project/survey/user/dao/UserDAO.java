package com.project.survey.user.dao;

import com.project.survey.user.dto.UserDTO;

public interface UserDAO {
	
	// 로그인 처리
	public UserDTO login(UserDTO userDTO) throws Exception;

}
