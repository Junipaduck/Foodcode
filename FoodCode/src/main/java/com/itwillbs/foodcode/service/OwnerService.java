package com.itwillbs.foodcode.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itwillbs.foodcode.mapper.OwnerMapper;
import com.itwillbs.foodcode.vo.MemberVO;
import com.itwillbs.foodcode.vo.OwnerVO;

@Service
public class OwnerService {
	
	@Autowired
	private OwnerMapper mapper;
	
	// 점주 회원가입
	public int insertOwner(MemberVO member) {
		return mapper.insertOwner(member);
	}
	
	public boolean isSuccessOwner(OwnerVO vo) {
		return mapper.isSuccessOwner(vo);
	}
	

}
