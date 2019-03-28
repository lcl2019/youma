package com.airi.service.impl;


import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.airi.constant.SalesLickStatus;
import com.airi.mapper.SalesLickMapper;
import com.airi.model.Employee;
import com.airi.model.SalesLick;
import com.airi.service.EmployeeService;
import com.airi.service.SalesLickService;

import com.airi.util.Page;

@Service
public class SalesLickServiceImpl implements SalesLickService {
	@Autowired
	private SalesLickMapper lickMapper;
	@Autowired
	private EmployeeService employeeService;

	public int addSalesLick(SalesLick lick) {
		Employee emp= employeeService.findEmpById(lick.getDeveloper());
		lick.setDevName(emp.getName());
		lick.setDeleted(false);
		lick.setStatus(SalesLickStatus.DEVELOPING);
		int count=lickMapper.addSalesLick(lick);
		
		return count;
	}

	public Page<SalesLick> findSalesLickList(Page page) {
		Map<String, Object> map=page.getMap();
		if(map==null){
			map=new HashMap<String, Object>();
		}
		page.setIndex((page.getPageNow()-1)*page.getPageSize());
		map.put("index", page.getIndex());
		map.put("pageSize", page.getPageSize());
		
		List<SalesLick> licks=lickMapper.findSalesLickList(map);
		int totalCount= findLickCount(map);
		//封装page相关数据，返回展示层
		Page<SalesLick> pageLick=new Page<SalesLick>();
		pageLick.setList(licks);
		pageLick.setPageSize(page.getPageSize());
		pageLick.setTotalCount(totalCount);
		if(page.getPageNow()>=pageLick.getPageCount()){
			pageLick.setPageNow(pageLick.getPageCount());
		}else{
			pageLick.setPageNow(page.getPageNow());
		}
		
	    
		return pageLick;
	}

	public List<SalesLick> findList() {
		// TODO Auto-generated method stub
		List<SalesLick> licks = lickMapper.findList();
		return licks;
	}

	

	public SalesLick findSalesLickById(Long id) {
		// TODO Auto-generated method stub
	      return lickMapper.findSalesLickById(id);
	}

	public int updateSalesLickById(SalesLick salesLick) {
		// TODO Auto-generated method stub
		int count=lickMapper.updateSalesLickById(salesLick);
		return count;
	}

	public int deleteSalesLick(String no) {
		int count=lickMapper.deleteSalesLick(no);
		return count;
	}

	public int findLickCount(Map<String, Object> map) {
		int totalCount=lickMapper.findLickCount(map);
		return totalCount;
	}

	public int updateSalesLickStatus(SalesLick lick,SalesLickStatus status) {
		lick.setStatus(status);
		int count=lickMapper.updateSalesLickStatus(lick);
		return count;
	}

	
	
	

}
