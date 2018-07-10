package com.jdbc;

import java.sql.ResultSet;  
import java.sql.SQLException;  
import org.springframework.dao.DataAccessException;  
import org.springframework.jdbc.core.ResultSetExtractor;

import com.bean.User;  
 
  
public class UserExtractor implements ResultSetExtractor<User> {  
  
 public User extractData(ResultSet resultSet) throws SQLException,  
   DataAccessException {  
    
  User user = new User();  
  user.setId(resultSet.getInt(1)); 
  user.setName(resultSet.getString(2)); 
  user.setDob(resultSet.getString(3));
  user.setMobile(resultSet.getString(4));
  user.setEmail(resultSet.getString(5));
    
  return user;  
 }  
}
