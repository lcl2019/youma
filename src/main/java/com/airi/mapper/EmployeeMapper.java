package com.airi.mapper;

import java.util.List;

import com.airi.model.Employee;

public interface EmployeeMapper {
	
	public List<Employee> findEmpList();
	
	public Employee findEmpById(Long id);

}
