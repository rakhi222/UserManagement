package com.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.bean.User;
import com.dao.UserDao;


public class UserService {
	
	@Autowired
	UserDao userDao;

	/*public User validateUser(Login login) {
		User user = userDao.validateUser(login);
		return user;
	}*/
	public void saveUser(User user) {
		userDao.save(user);
	}

	public List<User> getUserList() {
		 return userDao.getUserList();
	}
	public void updateData(User user) {
		userDao.updateData(user);
		
	}
	public void deleteData(String id) {
		userDao.deleteData(id);
		
	}
	public User getUser(String id) {
		// TODO Auto-generated method stub
		return userDao.getUser(id);
	}

}
