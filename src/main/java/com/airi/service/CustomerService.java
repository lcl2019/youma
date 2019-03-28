package com.airi.service;



import com.airi.model.Customer;
import com.airi.model.SalesLick;
import com.airi.util.Condition;
import com.airi.util.Paging;

public interface CustomerService {
	
	public Paging<Customer> findCustomerList(Condition condition);
	
	public int findCustomerCount(Condition condition);
 
	
	public int addCustomer(SalesLick lick);
	
	public boolean isExistCustomer(String no);
	
	public Customer findCustomerById(Long id);
	
	public int updateCustomer(Customer customer);

}
