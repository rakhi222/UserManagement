package com.jdbc;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.bean.User;

public class LoginRowMapper {

	
	 public User mapRow(ResultSet resultSet, int line) throws SQLException {  
		  UserExtractor userExtractor = new UserExtractor();  
		  return userExtractor.extractData(resultSet);  
		 } 
}
