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
		//�ж��û��Ƿ����
		if (user == null || user.getDeleted()) {
			user = new User();
			user.setLoginResult("�û������ڣ���ǰ��ע��");
		}
		//������������м��ܱȽ�
		String md = UserUtil.encryptMd5(password);
		if (!md.equals(user.getPassword())) {
			user.setLoginResult("�����������");
		}
		//�ж��û��Ƿ񱻽���
		if (UserStatus.BAN.equals(user.getStatus())) {
			user.setLoginResult("�û��ѱ�����");
		}
		System.out.println(user.getEmpName());
		return user;
	}

}
