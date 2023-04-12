package com.itwillbs.foodcode.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.*;

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


	public CustomerVO selectCustomer(String sId) {
		return mapper.selectCustomer(sId);
	}

	public int deleteCustomer(String sId) {
		return mapper.deleteCustomer(sId);
	}


	public String getPasswd(CustomerVO vo) {
		return mapper.getPasswd(vo);
	}


	public String getPassword(String sId) {
		return mapper.getPassword(sId);
	}


	public int modifyCustomer(String sId, CustomerVO customer) {
		return mapper.modifyCustomer(sId,customer);
	}


}
