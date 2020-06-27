package com.bayram.controller;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.bayram.model.Login;
import com.bayram.model.User;
import com.bayram.service.UserService;

@Controller
@RequestMapping("login")
public class LoginController {
	
//	private UserService userService=new UserServiceImp();
	
	@Autowired
	private UserService userService;
	
	@PostMapping
	@RequestMapping("/loginForNew")
	public ModelAndView getLogin() {
		
		
		return new ModelAndView("login","login",new Login());
	}
	@GetMapping
	@RequestMapping("valitadeLogin")
	public ModelAndView validateLogin(@ModelAttribute Login login) {
		ModelAndView view;
		if(login.getPassword()==null||login.getUsername()==null) {
			view=new ModelAndView("login","login",new Login());
			return view;
		}
		User user=userService.validateUser(login);
		
		if(user==null) {
			view=new ModelAndView("login","login",new Login());
			return view;
		}
		System.out.println(login);
		return new ModelAndView("userinfo","userlistele",userService.findByALL());
	}
	
	@GetMapping
	@RequestMapping("/listele")
	public ModelAndView listele() {
		return new ModelAndView("userinfo", "userlistele", userService.findByALL());
	}

}
