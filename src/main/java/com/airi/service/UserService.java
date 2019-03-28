package com.airi.service;

import com.airi.model.User;

public interface UserService {
	
	public User findUserByUserName(String username,String password);

}
