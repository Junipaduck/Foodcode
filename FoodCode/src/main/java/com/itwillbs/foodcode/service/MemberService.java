package com.itwillbs.foodcode.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itwillbs.foodcode.mapper.MemberMapper;
import com.itwillbs.foodcode.vo.MemberVO;

@Service
public class MemberService {
	
	@Autowired
	private MemberMapper mapper;

	// 회원 마이페이지 이동
	public MemberVO getMemberInfo(String id) {
		return mapper.selectMemberInfo(id);
	}
}
