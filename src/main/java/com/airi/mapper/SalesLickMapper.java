package com.airi.mapper;

import java.util.List;
import java.util.Map;

import com.airi.model.SalesLick;

public interface SalesLickMapper {
	
	public int  addSalesLick(SalesLick lick);
	
	public List<SalesLick> findSalesLickList(Map<String , Object> map);

	public SalesLick findSalesLickById(Long id);
	
	public  int updateSalesLickById(SalesLick  salesLick);
	
	public int deleteSalesLick(String no);
	
	public int findLickCount(Map<String, Object> map);
	
	public int updateSalesLickStatus(SalesLick lick);
	
	public List<SalesLick> findList();

}
