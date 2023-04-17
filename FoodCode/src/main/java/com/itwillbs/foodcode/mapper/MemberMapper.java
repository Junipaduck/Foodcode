package com.itwillbs.foodcode.mapper;

import java.lang.reflect.*;
import java.util.*;

import com.itwillbs.foodcode.vo.MemberVO;

public interface MemberMapper {

	// 회원 마이페이지 이동
	MemberVO selectMemberInfo(String id);

	List<MemberVO> selectMemberList(Member member);

}
