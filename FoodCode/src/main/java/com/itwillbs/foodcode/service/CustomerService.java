package com.itwillbs.foodcode.service;

import java.util.*;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.*;

import com.itwillbs.foodcode.mapper.CustomerMapper;
import com.itwillbs.foodcode.vo.*;

@Service
public class CustomerService {
	
	@Autowired
	private CustomerMapper mapper;
	
	
	public int insertMember(MemberVO member) {
		
		return mapper.insertMember(member);
	}


	public boolean isSuccessMember(MemberVO member) {
		return mapper.isSuccessMember(member);
	}


	public MemberVO selectMember(String sId) {
		return mapper.selectMember(sId);
	}

	public int deleteMember(String sId) {
		return mapper.deleteMember(sId);
	}


	public String getPasswd(MemberVO vo) {
		return mapper.getPasswd(vo);
	}


	public String getPassword(String sId) {
		return mapper.getPassword(sId);
	}


	public int modifyMember(String sId, MemberVO member, String modifyMember) {
		return mapper.modifyMember(sId,member,modifyMember);
	}


	public List bookingList(String sId) {
		return mapper.bookingList(sId);
	}


	public List selectMyReview(String sId) {
		return mapper.selectMyReview(sId);
	}


}
