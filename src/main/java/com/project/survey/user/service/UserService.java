package com.project.survey.user.service;

import com.project.survey.user.dto.UserDTO;

public interface UserService {
	
	public UserDTO login(UserDTO userDTO) throws Exception;

}
