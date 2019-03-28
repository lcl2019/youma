package com.airi.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.airi.model.SalesLick;
import com.airi.model.SalesPlan;
import com.airi.service.SalesLickService;
import com.airi.service.SalesPlanService;
import com.airi.util.Page;

@Controller
@RequestMapping("sale/salesPlanContrller")
public class SalesPlanContrller {
	@Autowired
	private SalesLickService lickService;
	@Autowired
	private SalesPlanService salesPlanService;

	@RequestMapping(value = "getSalesPlanList", method = RequestMethod.GET)
	public String getSalesPlanList(Page<SalesLick> page, ModelMap modelMap) {
		if (page.getPageNow() == null) {
			page.setPageNow(1);
		}
		if (page.getPageSize() == null) {
			page.setPageSize(10);
		}
		Page<SalesLick> pageLicks = lickService.findSalesLickList(page);
		for (SalesLick lick : pageLicks.getList()) {
			if (lick.getStatus() != null) {
				lick.setStatusName(lick.getStatus().getDescription());
			}

		}
		modelMap.put("pageLicks", pageLicks);
		return "sale/dev_list";

	}

	@RequestMapping(value = "getSalesPlan", method = RequestMethod.GET)
	public String getSalesPlan(Long id, ModelMap modelMap) {
		SalesLick lick = lickService.findSalesLickById(id);
		modelMap.put("lick", lick);
		return "sale/dev_plan";

	}

	@ResponseBody
	@RequestMapping(value = "addSalesPlan", method = RequestMethod.POST)
	public int addSalesPlan(@RequestBody List<SalesPlan> plans) {
		int count = 0;
		for (SalesPlan plan : plans) {

			int c = salesPlanService.addSalesPlan(plan);
			count += c;

		}
		return count;

	}

	@ResponseBody
	@RequestMapping(value = "editSalesPlan", method = RequestMethod.POST)
	public int editSalesPlan(SalesPlan salesPlan) {
		int count = salesPlanService.updateSalesPlan(salesPlan);
		return count;

	}
	@RequestMapping(value = "lookSalesPlan/{parm}", method = RequestMethod.GET)
	public String lookSalesPlan(@PathVariable("parm")String parm,Long lickId,ModelMap modelMap){
		String url="sale/dev_detail";
		if("execute".equals(parm)){
			url="sale/dev_plan_execute";
		}
		SalesLick lick=salesPlanService.findLickAndPlans(lickId);
		modelMap.put("lick", lick);
		if(lick.getPlans()==null||lick.getPlans().size()<=0){
			url="redirect:/sale/salesPlanContrller/getSalesPlanList";
			modelMap.put("lick", "null");
		}
		return url;
		
	}
}
