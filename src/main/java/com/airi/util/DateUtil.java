package com.airi.util;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

public class DateUtil {
	
	public static String getSysTime(){
		Date date=new Date();
		DateFormat format=new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
		String time=format.format(date);
		return time;
		
		
	}
	
	public static String getTime(){
		Date date=new Date();
	    long  timestamp =date.getTime();
	    
	    String stampStr=String.valueOf(timestamp);
	    
	    return stampStr;
	}
	
	

}
