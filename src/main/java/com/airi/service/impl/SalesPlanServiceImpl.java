package com.airi.service.impl;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.airi.constant.SalesPlanStatus;
import com.airi.constant.UserStatus;
import com.airi.mapper.SalesPlanMapper;
import com.airi.model.SalesLick;
import com.airi.model.SalesPlan;
import com.airi.service.SalesPlanService;

@Service
public class SalesPlanServiceImpl implements SalesPlanService {
	@Autowired
	private SalesPlanMapper planMapper;

	public int addSalesPlan(SalesPlan salesPlan) {
		salesPlan.setCreated(new Date());
		salesPlan.setStatus(SalesPlanStatus.NORMAL);
		salesPlan.setDeleted(false);
		int count = planMapper.addSalesPlan(salesPlan);
		return count;
	}

	public int updateSalesPlan(SalesPlan plan) {
		int count=planMapper.updateSalesPlan(plan);
		return count;
	}

	public SalesLick findLickAndPlans(Long lickId) {
		SalesLick lick=planMapper.findLickAndPlans(lickId);
		if(lick==null){
			lick=new SalesLick();
		}
		if(lick.getStatus()!=null){
			lick.setStatusName(lick.getStatus().getDescription());
		}
		
		return lick;
	}

}
