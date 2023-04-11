package com.itwillbs.foodcode.mapper;

import com.itwillbs.foodcode.vo.CustomerVO;

public interface CustomerMapper {
	
	// 회원가입
	int insertCustomer(CustomerVO vo);
	
	// 로그인
	boolean isSuccessCustomer(CustomerVO vo);
	
}