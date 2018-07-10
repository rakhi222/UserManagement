package com.jdbc;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.dao.DataAccessException;

import com.bean.User;

public class LoginExtractor {

	public User extractData(ResultSet resultSet) throws SQLException,  
	   DataAccessException {  
	    
	  User user = new User();  
    user.setUserName(resultSet.getString(1)); 
	user.setPassword(resultSet.getString(2)); 
	
	  return user;  
	 }  }
