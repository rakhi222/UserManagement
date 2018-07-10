package com.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.bean.Login;
import com.bean.User;
import com.services.UserService;

@Controller
public class UserController {

	@Autowired
	UserService userService;

	List<User> userList = new ArrayList<User>();

	@RequestMapping(value = "/home", method = RequestMethod.POST)
	public String user(@ModelAttribute("user") @Validated User user, Model model, HttpServletRequest request,
			HttpServletResponse response) {
		
		return "home";
	}

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String loginValidate1(HttpServletRequest request, HttpServletResponse response) {
		return "index";
	}

	@RequestMapping("/addUserForm")
	public ModelAndView showAddUserform() {
		// command is a reserved request attribute name, now use <form> tag to
		// //
		return new ModelAndView("addUserForm", "user", new User());
	}

	@RequestMapping(value = "/login")
	public ModelAndView loginValidate4(HttpServletRequest request, HttpServletResponse response) {

		return new ModelAndView("login", "login", new Login());
	}

	@RequestMapping(value = "/saveUser")
	public String saveUser(@ModelAttribute("user") User user, Model model, HttpServletRequest request,
			HttpServletResponse response) {
		if (user != null)

			System.out.println("user id while saving " + user.getId());
		userService.saveUser(user);

		return "home";
	}

	@RequestMapping("/delete")
	public String deleteUser(@RequestParam String id) {
		System.out.println("id = " + id);
		userService.deleteData(id);
		return "redirect:/getList";
	}

	@RequestMapping("/update")
	public String updateUser(@ModelAttribute User user) {

		System.out.println("inside update now");
		userService.updateData(user);
		return "home";

	}

	@RequestMapping("/edit")
	public ModelAndView editUser(@RequestParam String id, @ModelAttribute User user, HttpServletRequest request,
			HttpServletResponse response) {

		System.out.println("ID of the user" + user.getId());
		user = userService.getUser(id);
		return new ModelAndView("edit", "user", user);

	}

	@RequestMapping("/viewUser")
	public ModelAndView viewUser(@ModelAttribute("user") User user, Model model) {

		return new ModelAndView("viewUser", "user", user);
	}

	@RequestMapping(value = "/getListByAjax", method = RequestMethod.GET)
	public @ResponseBody List<User> getUserLIstByAjax(HttpServletRequest httpServletRequest,
			HttpServletResponse httpServletResponse) {

		return userService.getUserList();
	}

	@RequestMapping(value = "/getList", method = RequestMethod.POST)
	public ModelAndView getUserLIst(@ModelAttribute("user") User user, Model model,
			HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse) {

		System.out.println("calling DB inside getlist");
		userList = userService.getUserList();

		return new ModelAndView("viewUser", "userList", userList);

	}

	@RequestMapping("/getListOfIds")
	public ModelAndView getListOfIds(@ModelAttribute("user") User user, Model model) {

		List<Integer> idList = new ArrayList<Integer>();

		List<User> userForId = new ArrayList<>();

		System.out.println("inside getUserid list");

		userForId = userService.getUserList();

		for (User userList : userForId) {
			idList.add(userList.getId());
		}

		System.out.println(idList);

		Map<String, Object> map = new HashMap<String, Object>();
		map.put("idList", idList);

		System.out.println(map);
		return new ModelAndView("editById", "map", map);
	}

}
