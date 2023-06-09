package com.itwillbs.foodcode.mapper;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.*;
import org.springframework.web.bind.annotation.*;

import com.itwillbs.foodcode.vo.*;

public interface OwnerMapper {

	// 점주 회원가입
	int insertOwner(MemberVO member);
	
	boolean isSuccessOwner(OwnerVO vo);

	MemberVO selectMember(String id);

	String getPasswd(String id);

	int modifyMember(@Param("sId") String sId, @Param("member") MemberVO member , @Param("newPasswd") String newPasswd);

	List<StoreVO> selectStore(String id);

	List<HashMap<String, String>> showBooking(@Param("id") String id, @Param("clickedYMD") String clickedYMD);

	int countStore(String id);
	
	StoreVO getStore(int store_idx);

	int deleteStoreFile(int store_idx);

	int modifyStore(StoreVO store);

	List<HashMap<String, String>> getMemberInfo(String id);

	int deleteOwnerStore(StoreVO store);

	int deleteBooking(@Param("booking_idx") int booking_idx);

}
