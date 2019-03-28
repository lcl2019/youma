package com.airi.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.airi.model.Employee;
import com.airi.service.EmployeeService;

@Controller
@RequestMapping("emp/EmployeeController")
public class EmployeeController {
	@Autowired
	private EmployeeService employeeService;
	
	@RequestMapping(value="getEmpList",method=RequestMethod.GET)
	public String getEmpList(ModelMap modelMap){
		List<Employee> employees = employeeService.findEmpList();
		modelMap.put("employees", employees);
		return "sale/add";
	}

}
