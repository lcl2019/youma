package com.airi.service;

import java.util.List;

import com.airi.model.Employee;

public interface EmployeeService {
	
	public List<Employee> findEmpList();
	
	public Employee findEmpById(Long id);

}
