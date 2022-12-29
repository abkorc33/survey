package com.project.survey.user.dto;

import java.sql.Timestamp;

import org.springframework.stereotype.Component;

import lombok.Data;

@Data
@Component("UserDTO")
public class UserDTO {

	private long user_id;
	private String id;
	private String pwd;
	private String name;
	private String phone;
	private String email;
	private Timestamp joinDate;
	private String role;
	
}
