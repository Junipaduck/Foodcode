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

	// 일반회원인지 조회
	public CustomerVO getMemberInfo(String id) {
		return mapper.selectMemberInfo(id);
	}

}
