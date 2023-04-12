package com.itwillbs.foodcode.mapper;

import com.itwillbs.foodcode.vo.MemberVO;
import com.itwillbs.foodcode.vo.OwnerVO;

public interface OwnerMapper {

	// 점주 회원가입
	int insertOwner(MemberVO member);
	
	boolean isSuccessOwner(OwnerVO vo);

}
