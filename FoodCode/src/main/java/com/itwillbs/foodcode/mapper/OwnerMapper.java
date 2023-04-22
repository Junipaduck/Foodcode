package com.itwillbs.foodcode.mapper;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.*;

import com.itwillbs.foodcode.vo.*;

public interface OwnerMapper {

	// 점주 회원가입
	int insertOwner(MemberVO member);
	
	boolean isSuccessOwner(OwnerVO vo);

	MemberVO selectMember(String id);

	String getPasswd(String id);

	int modifyMember(@Param("sId") String sId, @Param("member") MemberVO member , @Param("newPasswd") String newPasswd);

	List<StoreVO> selectStore(String id);

	List<BookingVO> showBooking(String id);

	int countStore(String id);

}
