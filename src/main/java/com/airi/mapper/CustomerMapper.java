package com.airi.mapper;

import java.util.List;
import java.util.Map;

import com.airi.model.Customer;

public interface CustomerMapper {
	
	public List<Customer> findCustomerList(Map<String, Object> map);
	
	public int findCustomerCount(Map<String, Object> map);
	
	public int addCustomer(Customer customer);
	
	public Customer findCustomer(String no);
	
	public Customer findCustomerById(Long id);
	
	public int updateCustomer(Customer customer);

}
