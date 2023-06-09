package com.itwillbs.foodcode.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.*;

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

	// 회원 정보 수정
	public int modifyMember(String id, MemberVO member, String newPasswd) {
		return mapper.modifyMember(id, member, newPasswd);
	}

	// 가게 정보 조회
	public List<StoreVO> selectStore(String id) {
		return mapper.selectStore(id);
	}

	// 점주의 예약 정보 조회
//	public List<BookingVO> showBooking(BookingVO booking) {
//		return mapper.showBooking(booking);
//	}
	public List<HashMap<String, String>> showBooking(@Param("id") String id, @Param("clickedYMD") String clickedYMD) {
		return mapper.showBooking(id, clickedYMD);
	}
	
	// 점주의 가게 갯수 조회
	public int countStore(String id) {
		return mapper.countStore(id);
	}
	
	// 점주의 가게 정보 수정
	public StoreVO getStore(int store_idx) {
		return mapper.getStore(store_idx);
	}

	// 점주 가게 정보 수정 - 업체사진 삭제
	public int removeStoreFile(int store_idx) {
		return mapper.deleteStoreFile(store_idx);
	}

	// 점주 가게 정보 수정
	public int modifyStore(StoreVO store) {
		return mapper.modifyStore(store);
	}

	public List<HashMap<String, String>> getMemberInfo(String id) {
		return mapper.getMemberInfo(id);
	}

	public int deleteOwnerStore(StoreVO store) {
		return mapper.deleteOwnerStore(store);
	}

	public int deleteBooking(@Param("booking_idx") int booking_idx) {
		return mapper.deleteBooking(booking_idx);
	}


	

}
