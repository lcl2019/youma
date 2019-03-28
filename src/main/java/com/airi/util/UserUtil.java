package com.airi.util;


public class UserUtil {
	
	public final static String encryptMd5(String password){
		//调用MD5加密工具
		String result=Utils.md5(password); 		
		return result;
		
	}

}
