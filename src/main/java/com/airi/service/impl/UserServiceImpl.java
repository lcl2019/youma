package com.airi.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.airi.constant.UserStatus;
import com.airi.mapper.UserMapper;
import com.airi.model.User;
import com.airi.service.UserService;
import com.airi.util.UserUtil;

@Service
public class UserServiceImpl implements UserService {
	@Autowired
	private UserMapper userMapper;

	public User findUserByUserName(String username, String password) {
		// TODO Auto-generated method stub
		User user = userMapper.findUserByUserName(username);
		//判断用户是否存在
		if (user == null || user.getDeleted()) {
			user = new User();
			user.setLoginResult("用户不存在，请前往注册");
		}
		//将输入密码进行加密比较
		String md = UserUtil.encryptMd5(password);
		if (!md.equals(user.getPassword())) {
			user.setLoginResult("密码输入错误");
		}
		//判断用户是否被禁用
		if (UserStatus.BAN.equals(user.getStatus())) {
			user.setLoginResult("用户已被禁用");
		}
		System.out.println(user.getEmpName());
		return user;
	}

}
