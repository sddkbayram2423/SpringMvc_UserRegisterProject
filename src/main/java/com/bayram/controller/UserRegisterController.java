package com.bayram.controller;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.bayram.model.Login;
import com.bayram.model.User;
import com.bayram.service.UserService;

@Controller
@RequestMapping("/register")
public class UserRegisterController {
	
	
//	private UserService userService=new UserServiceImp();
	
	@Autowired
	private UserService userService;
	
	@PostMapping
	@RequestMapping("/registerForNew")
	public ModelAndView modelAndView() {
		return new ModelAndView("register","user",new User());
	}
	@GetMapping
	@RequestMapping("/registerUser")
	public ModelAndView registerUser(@ModelAttribute User user) {
		
		if(user==null) {
			return new ModelAndView("register","user",new User());
		}
		userService.registerUser(user);
		return new ModelAndView("login","login",new Login());
		
	
	}
	@GetMapping
	@RequestMapping("/listele")
	public ModelAndView listele() {
		return new ModelAndView("userinfo", "userlistele", userService.findByALL());
	}

}
