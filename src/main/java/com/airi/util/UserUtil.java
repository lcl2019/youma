package com.airi.util;


public class UserUtil {
	
	public final static String encryptMd5(String password){
		//����MD5���ܹ���
		String result=Utils.md5(password); 		
		return result;
		
	}

}
