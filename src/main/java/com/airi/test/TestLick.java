package com.airi.test;

import java.util.List;

import com.airi.model.SalesLick;
import com.airi.service.SalesLickService;
import com.airi.service.impl.SalesLickServiceImpl;

public class TestLick {
	
	public static void main(String[] args) {
		SalesLickService lickService=new SalesLickServiceImpl();
		List<SalesLick> licks= lickService.findList();
        for(SalesLick lick:licks){
        	System.out.println(lick);
        }
		
	}

}
