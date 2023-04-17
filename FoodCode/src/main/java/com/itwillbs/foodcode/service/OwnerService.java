package com.itwillbs.foodcode.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itwillbs.foodcode.mapper.OwnerMapper;
import com.itwillbs.foodcode.vo.*;

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

	public MemberVO selectMember(String id) {
		return mapper.selectMember(id);
	}

	public String getPasswd(String id) {
		return mapper.getPasswd(id);
	}

	public int modifyMember(String id, MemberVO member, String newPasswd) {
		return mapper.modifyMember(id, member, newPasswd);
	}

	public List<StoreVO> selectStore(StoreVO store) {
		return mapper.selectStore(store);
	}

	public List<BookingVO> showBooking(BookingVO booking) {
		return mapper.showBooking(booking);
	}
	

}
