package com.airi.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.airi.model.Customer;
import com.airi.model.Employee;
import com.airi.service.CustomerService;
import com.airi.service.EmployeeService;
import com.airi.util.Condition;
import com.airi.util.Paging;

@Controller
@RequestMapping("cust/cust/customerController")
public class CustomerController {
	@Autowired
	private CustomerService customerService;
	@Autowired
	private EmployeeService empService;
    
	@RequestMapping(value="getCustomers",method=RequestMethod.GET)
	public ModelAndView getCustomers(Condition condition){
		Paging<Customer> paging= customerService.findCustomerList(condition);
		ModelAndView mav=new ModelAndView("cust/cust/list");
		mav.addObject("page", paging);
		return mav;
		
		
		
	}
	@RequestMapping(value="getCustomer",method=RequestMethod.GET)
	public ModelAndView getCustomer(Long id){
		List<Employee> employees= empService.findEmpList();
		Customer customer=customerService.findCustomerById(id);
		ModelAndView mav=new ModelAndView("cust/cust/edit");
		mav.addObject("employees", employees);
		mav.addObject("customer", customer);
		return mav;
		
	}
	@RequestMapping(value="editCustomer",method=RequestMethod.POST)
	public ModelAndView editCustomer(Customer customer){
		int count=customerService.updateCustomer(customer);
		ModelAndView mav=new ModelAndView("cust/cust/edit");
		mav.addObject("count", count);
		return mav;
		
	}
}
