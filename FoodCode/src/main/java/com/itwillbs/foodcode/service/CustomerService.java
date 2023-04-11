package com.itwillbs.foodcode.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itwillbs.foodcode.mapper.CustomerMapper;
import com.itwillbs.foodcode.vo.CustomerVO;

@Service
public class CustomerService {
	
	@Autowired
	private CustomerMapper mapper;
	
	
	public int insertCustomer(CustomerVO vo) {
		
		return mapper.insertCustomer(vo);
	}


	public boolean isSuccessCustomer(CustomerVO vo) {
		return mapper.isSuccessCustomer(vo);
	}

}
