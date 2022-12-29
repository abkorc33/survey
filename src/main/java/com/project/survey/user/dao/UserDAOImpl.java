package com.project.survey.user.dao;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.project.survey.user.dto.UserDTO;

@Repository
public class UserDAOImpl implements UserDAO {

	@Inject 
	SqlSession sqlSession;
	
	private static final String Namespace = "user";
	
	// 로그인 처리
	@Override
	public UserDTO login(UserDTO userDTO) throws Exception {
		return sqlSession.selectOne(Namespace + ".login", userDTO);
	}

}
