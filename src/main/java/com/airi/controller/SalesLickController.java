package com.airi.controller;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.airi.constant.SalesLickStatus;
import com.airi.model.Employee;
import com.airi.model.SalesLick;
import com.airi.service.CustomerService;
import com.airi.service.EmployeeService;
import com.airi.service.SalesLickService;
import com.airi.util.DateUtil;
import com.airi.util.Page;

@Controller
@RequestMapping("sale/salesLickController")
public class SalesLickController {
	@Autowired
	private SalesLickService salesLickService;
	@Autowired
	private EmployeeService employeeService;
	@Autowired
	private CustomerService customerService;
	
	@RequestMapping(value="addSalesLick",method=RequestMethod.POST)
	public String addSalesLick(SalesLick lick){
		int count=salesLickService.addSalesLick(lick);
		if(count>0){
			System.out.println("添加成功:"+count);
		}
		return "redirect:getLickList?pageNow=1&pageSize=10";
		
	}
	@RequestMapping(value="getLickList",method=RequestMethod.GET)
	public String getLickList(Page<Object> page,  ModelMap modelMap){
		if(page.getPageNow()==null){
			page.setPageNow(1);
		}
		if(page.getPageSize()==null){
			page.setPageSize(10);
		}
		Page<SalesLick> pageLick= salesLickService.findSalesLickList(page);
		modelMap.put("pageLick", pageLick);
		return "sale/list";
	}
	@RequestMapping(value="findSalesLickById",method=RequestMethod.GET)
	public String findSalesLickById(Long id,ModelMap modelMap){
		SalesLick lick=salesLickService.findSalesLickById(id);
		modelMap.put("lick", lick);
		return "sale/edit";
	}
	@ResponseBody
	@RequestMapping(value="editSalesLick",method=RequestMethod.POST,name="编辑销售机会")
	public int editSalesLick(SalesLick salesLick){
		int count=salesLickService.updateSalesLickById(salesLick);
		return count;
		}
	@ResponseBody
	@RequestMapping(value="deleteSalesLick",method=RequestMethod.POST,name="删除")
	public int deleteSalesLick(String no){
		 int count= salesLickService.deleteSalesLick(no);
		return count;
	}
	@RequestMapping("createNoAndEmp")
	public String createNoAndEmp(ModelMap modelMap){
		String no=DateUtil.getTime();
		modelMap.put("no", no);
		List<Employee> employees=employeeService.findEmpList();
		modelMap.put("employees", employees);
		return "sale/add";
	}
	@ResponseBody
	@RequestMapping(value="markStatus",method=RequestMethod.POST,name="标记状态为归档")
	public int markStatus(SalesLick lick){
		int count=salesLickService.updateSalesLickStatus(lick,SalesLickStatus.ARCHIVED);
		return count;
		
	}
	@ResponseBody
	@RequestMapping(value="markSuccess",method=RequestMethod.POST,name="标记状态")
	public int markSuccess(SalesLick lick){
		int lickCount=salesLickService.updateSalesLickStatus(lick,SalesLickStatus.DEVELOP_SUCCESS);
		SalesLick salesLick=salesLickService.findSalesLickById(lick.getId());
		boolean flag=customerService.isExistCustomer(salesLick.getNo());
		if(flag){
			return -1;
		}
		int custCount=customerService.addCustomer(salesLick);
		int count=lickCount+custCount;
		return count;
		
	}
	@ResponseBody
	@RequestMapping(value="getList")
	public List<SalesLick> getList(){
		List<SalesLick> licks= salesLickService.findList();
		return licks;
	}

}
