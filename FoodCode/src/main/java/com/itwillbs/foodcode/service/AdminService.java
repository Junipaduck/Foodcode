package com.itwillbs.foodcode.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itwillbs.foodcode.mapper.AdminMapper;
import com.itwillbs.foodcode.vo.CustomerVO;
import com.itwillbs.foodcode.vo.OwnerVO;
import com.itwillbs.foodcode.vo.StoreVO;

@Service
public class AdminService {

	@Autowired
	private AdminMapper mapper;
	
	
	//---------------일반 회원 조회-------------
	public List<CustomerVO> getCustomerList() {
		
		return mapper.selectCustomerList();
	}
	
	//---------------점주 회원 조회-------------
	public List<OwnerVO> getOwnerList() {
		
		return mapper.selectOwnerList();
	}
	
	//---------------식당 조회-------------
	public List<StoreVO> getStoreList() {
		
		return mapper.selectStoreList();
	}
	
	//---------------일반 회원 삭제-------------
	public int CustomerDelect(String customer_idx, String customer_passwd) {
		
//		System.out.println("CustomerDelect 객체 안" + customer_idx+customer_passwd);
		return mapper.delectCustomer(customer_idx, customer_passwd);
	}

	
	
	
}
