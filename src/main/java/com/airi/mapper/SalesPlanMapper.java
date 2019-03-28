package com.airi.mapper;


import com.airi.model.SalesLick;
import com.airi.model.SalesPlan;

public interface SalesPlanMapper {
	public int addSalesPlan(SalesPlan salesPlan);
	
	public int updateSalesPlan(SalesPlan plan);
	
	public SalesLick findLickAndPlans(Long lickId);

}
