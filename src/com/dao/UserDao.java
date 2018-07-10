package com.dao;

import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;

import com.bean.User;
import com.jdbc.UserRowMapper;

public class UserDao {

	@Autowired
	DataSource dataSource;

	JdbcTemplate template = new JdbcTemplate();

	public void setTemplate(JdbcTemplate template) {
		this.template = template;
	}

	public int save(User p) {

		/*
		 * ApplicationContext context = new
		 * ClassPathXmlApplicationContext("spring-servlet.xml"); JdbcTemplate
		 * template = (JdbcTemplate) context.getBean("template");
		 */

		JdbcTemplate template = new JdbcTemplate(dataSource);
		String sql = "insert into User (id,name,dob,mobile,email) " + "values('" + p.getId() + "','" + p.getName() + "','" + p.getDob() + "','"
				+ p.getMobile() + "','" + p.getEmail() + "')";
		System.out.println("inside dao" +p.getId());

		//System.out.println(template.update(sql));
		return template.update(sql);
	}

	/*public User validateUser(Login login) {

		User user = new User();

		JdbcTemplate template = new JdbcTemplate(dataSource);
		String sql = "select from login where Username= " + login.getUserName() + " and Password= "
				+ login.getPassword() + ")";

		//user = (User) template.query(sql, new LoginRowMapper());
		

			return user;
	}*/

	public List<User> getUserList() {

		List<User> userList = new ArrayList<User>();

		JdbcTemplate template = new JdbcTemplate(dataSource);
		String sql = "select * from User";
 System.out.println("inside user list dao");
		userList = template.query(sql, new UserRowMapper());
		// TODO Auto-generated method stub
		return userList;
	}
	
	public void updateData(User user) {  
		  
		  String sql = "UPDATE user set name = ?,dob = ?, mobile = ?, email=? where id ="+user.getId();  
		  JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);  
		  
		  jdbcTemplate.update(  
		    sql,  
		    new Object[] { user.getName(), user.getDob(), user.getMobile(), user.getEmail() });  
		  
		 }  

	 public void deleteData(String id) {  
		  String sql = "delete from user where id=" + id;  
		  JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);  
		  jdbcTemplate.update(sql);  
		  
		 } 
	 
	 public User getUser(String id) {  
		 
		 System.out.println("inside getUser"+id);
		  List<User> userList = new ArrayList<User>();  
		  String sql = "select * from user where id= " + id;  
		  JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);  
		  userList = jdbcTemplate.query(sql, new UserRowMapper());  
		  return userList.get(0);  
		 }  
		  
}