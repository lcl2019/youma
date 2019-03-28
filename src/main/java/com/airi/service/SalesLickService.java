package com.airi.service;

import java.util.List;
import java.util.Map;

import com.airi.constant.SalesLickStatus;
import com.airi.model.SalesLick;
import com.airi.util.Page;

public interface SalesLickService {
	
	public int addSalesLick(SalesLick lick);
	
	public Page findSalesLickList(Page page);
	
	public SalesLick findSalesLickById(Long id);
	
	public int updateSalesLickById(SalesLick salesLick);
	
	public int deleteSalesLick(String no);
	
	public int findLickCount(Map<String, Object> map);
	
	public int updateSalesLickStatus(SalesLick lick,SalesLickStatus status);
	
	public List<SalesLick> findList();

}
