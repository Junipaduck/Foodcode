package com.itwillbs.foodcode.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.itwillbs.foodcode.vo.*;

public interface AdminMapper {
	
	
	List<MemberVO> selectMemberList();
	
	List<OwnerVO> selectOwnerList();
	
	List<StoreVO> selectStoreList();
	
	int delectMember(@Param("member_idx")String member_idx, @Param("member_id")String member_id);

	MemberVO selectMemberInfo(String id);
	
}
