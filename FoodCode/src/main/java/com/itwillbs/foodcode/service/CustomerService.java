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


	public List afterBookingList(String sId) {
		return mapper.afterBookingList(sId);
	}


	public int customerBookingCancle(String booking_idx) {
		return mapper.customerBookingCancle(booking_idx);
	}


	public boolean isDupilcateMember(String member_id) {
		return mapper.isDuplicateMember(member_id);
	}


	public String JoinPerson(String email) {
		return mapper.joinPerson(email);
	}


	public boolean isDupilcateMemberEmail(String member_email) {
		return mapper.isDupilcateMemberEmail(member_email);
	}


	public int insertKakaoMember(MemberVO member) {
		return mapper.insertKakaoMember(member);
	}


	public String findId(MemberVO member) {
		// TODO Auto-generated method stub
		return mapper.findId(member);
	}


	public MemberVO selectMemberFindPasswd(MemberVO member) {
		// TODO Auto-generated method stub
		return mapper.selectMemberFindPasswd(member);
	}


	public int updateMemberFindPasswd(MemberVO member) {
		return mapper.updateMemberFindPasswd(member);
	}


	public int updatePoint(String sId, MemberVO vo2) {
		return mapper.updatePoint500(sId,vo2);
	}


	public int deletePoint500(MemberVO member) {
		return mapper.deletePoint500(member);
	}


}
