package com.airi.service;

import java.util.List;

import com.airi.model.SalesLick;
import com.airi.model.SalesPlan;

public interface SalesPlanService {
	
	public int addSalesPlan(SalesPlan salesPlan);
	

	public int updateSalesPlan(SalesPlan plan);
	
	public SalesLick findLickAndPlans(Long lickId);
	
	

}
