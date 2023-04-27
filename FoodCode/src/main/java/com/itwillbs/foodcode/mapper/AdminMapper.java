package com.itwillbs.foodcode.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.itwillbs.foodcode.vo.*;

public interface AdminMapper {
	
	
	List<MemberVO> selectMemberList();
	
	List<OwnerVO> selectOwnerList();
	
	List<StoreVO> selectStoreList();
	
	int deleteMember(@Param("member_idx")String member_idx, @Param("member_id")String member_id, @Param("member_type")String member_type);

	MemberVO selectMemberInfo(String id);

//	List<ReviewVO> selectReviews();

	int deleteStore(@Param("store_license") String store_license, @Param("owner_id") String owner_id);

	List getStoreList2();
	
	List getNoApprove();

	String getMemberCount();
	
	String getOwnerCount();

	String getStoreCount();

	String getNoticeCount();

	String getReportCount();
	
	String getReviewCount();

	int updateStoreApprove(@Param("store_license") String store_license);

	void deleteReportCount(@Param("store_idx")String store_idx);

	List<ReviewVO> getReviewList();
	
	void deleteReview(@Param("review_idx")String review_idx);

	

	
	
}
