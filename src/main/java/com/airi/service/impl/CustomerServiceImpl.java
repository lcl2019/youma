package com.airi.service.impl;

import java.util.Date;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.airi.constant.CustomerStatus;
import com.airi.constant.Level;
import com.airi.mapper.CustomerMapper;
import com.airi.model.Customer;
import com.airi.model.Employee;
import com.airi.model.SalesLick;
import com.airi.service.CustomerService;
import com.airi.service.EmployeeService;
import com.airi.util.Condition;
import com.airi.util.Paging;

@Service
public class CustomerServiceImpl implements CustomerService {
	@Autowired
	private CustomerMapper customerMapper;
	@Autowired
	private EmployeeService employeeService;

	public Paging<Customer> findCustomerList(Condition condition) {
		//查询总条数
		int totalCount=findCustomerCount(condition);
		//实例化paging对象，初始化当前页、页面大小、总页数
		Paging<Customer> paging=new Paging<Customer>(condition.getPageNo(), condition.getPageSize(),totalCount);
		Map<String, Object> map=condition.getMap();
		//讲条件加入map
		map.put("index", condition.getIndex());
		map.put("pageSize",condition.getPageSize());
		//根据条件查询客户集合
		List<Customer> customers= customerMapper.findCustomerList(map);
		paging.setList(customers);
		return paging;
	}

	public int findCustomerCount(Condition condition) {
		int totalCount = customerMapper.findCustomerCount(condition.getMap());
		return totalCount;
	}

	public int addCustomer(SalesLick lick) {
		Customer customer=new Customer();
		customer.setNo(lick.getNo());
		customer.setName(lick.getCustomerName());
		customer.setTel(lick.getTel());
		customer.setChieftain(lick.getDevName());
		customer.setLevel(Level.GENERAL_CUSTOMER);
		customer.setLevelLabel(customer.getLevel().getDescription());
		customer.setManagerId(lick.getDeveloper());
		customer.setManagerName(lick.getDevName());
		customer.setStatus(CustomerStatus.NORMAL);
		customer.setCreated(new Date());
		customer.setCreator(lick.getCreator());
		customer.setDeleted(false);
		
		int count=customerMapper.addCustomer(customer);
		return count;
	}

	public boolean isExistCustomer(String no) {
	    Customer customer=	customerMapper.findCustomer(no);
	    if(customer==null){
	    	return false;
	    }
		return true;
	}

	public Customer findCustomerById(Long id) {
		Customer customer=customerMapper.findCustomerById(id);
		return customer;
	}

	public int updateCustomer(Customer customer) {
		Employee employee=employeeService.findEmpById(customer.getManagerId());
		customer.setManagerName(employee.getName());
		int count=customerMapper.updateCustomer(customer);
		return count;
	}


}
