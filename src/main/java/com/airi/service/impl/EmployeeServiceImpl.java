package com.airi.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.airi.mapper.EmployeeMapper;
import com.airi.model.Employee;
import com.airi.service.EmployeeService;

@Service
public class EmployeeServiceImpl implements EmployeeService {
	@Autowired
	private EmployeeMapper employeeMapper;

	public List<Employee> findEmpList() {
	    List<Employee> employees=	employeeMapper.findEmpList();
		return employees;
	}

	public Employee findEmpById(Long id) {
		Employee employee=employeeMapper.findEmpById(id);
		return employee;
	}

}
