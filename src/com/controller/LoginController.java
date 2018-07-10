package com.controller;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.bean.Login;
import com.services.UserService;

@Controller

@WebServlet("/LoginServlet")
public class LoginController extends HttpServlet {
	

	@Autowired
	UserService userService;

	private static final long serialVersionUID = 1L;
	private String userId="Rakhi";
	private String password="rakhi";

	@RequestMapping(value = "/loginValidate", method = RequestMethod.POST)
	public String loginValidate(@ModelAttribute("login") Login login, Model model, HttpServletRequest request,
			HttpServletResponse response) {

		//User userOfDb = userService.validateUser(login);
		
		String user = request.getParameter("userName");
		String pwd = request.getParameter("password");

		System.out.println("username is " + user);
		System.out.println("password is " + pwd);

		
		if (userId.equals(user) && password.equals(pwd)) {
			Cookie loginCookie = new Cookie("user", user);
			// setting cookie to expiry in 30 mins
			loginCookie.setMaxAge(30 * 60);
			response.addCookie(loginCookie);
			return "home";
		} else {
			return "error";
		}

	}



}
