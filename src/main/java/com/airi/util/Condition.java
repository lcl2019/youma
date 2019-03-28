package com.airi.util;

import java.util.HashMap;
import java.util.Map;

public class Condition {
	private int pageNo;
	private int pageSize;
	private Map<String , Object> map;
	public int getPageNo() {
		return pageNo;
	}
	public void setPageNo(int pageNo) {
		this.pageNo = pageNo;
	}
	public int getPageSize() {
		return pageSize;
	}
	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}
	public Map<String, Object> getMap() {
		if(map==null){
			this.map=new HashMap<String, Object>();
		}
		return map;
	}
	public void setMap(Map<String, Object> map) {
		
		this.map = map;
	}
	public int getIndex() {
		return (this.pageNo-1)*pageSize;
	}
	
	
	

}
