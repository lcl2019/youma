package com.airi.controller;


import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.airi.model.User;
import com.airi.service.UserService;

@Controller
@RequestMapping("userController")
public class UserController {
	@Autowired
	private UserService service;
	private HttpSession session;
	
	@ResponseBody
	@RequestMapping("login")
	public User login(String username,String password,HttpServletRequest request){
		User user=null;
		if(username!=null&&!"".equals(username)){
			user=service.findUserByUserName(username,password);
			session=request.getSession();
			session.setAttribute("userSession", user);
			
		}else{
			user=new User();
			user.setLoginResult("用户名或密码不能为空");
		}
		return user;
		
	}

}
