package com.itwillbs.foodcode.mapper;

import java.util.*;

import org.apache.ibatis.annotations.*;

import com.itwillbs.foodcode.vo.*;

public interface ReviewMapper {
	int insertReview(ReviewVO vo);

	int updateReview(ReviewVO vo);

	int deleteReview(@Param("review_idx") int review_idx);

//	List<ReviewVO> selectReviewList(ReviewVO review);

	List<ReviewVO> customerReviewList(ReviewVO review);

	// 글 목록 조회
	List<ReviewVO> selectReviewList(@Param("searchType") String searchType, 
									@Param("searchKeyword") String searchKeyword, 
									@Param("startRow") int startRow, 
									@Param("listLimit") int listLimit);

	int selectReviewListCount(@Param("searchType") String searchType, 
							  @Param("searchKeyword") String searchKeyword);

	List<ReviewVO> reviewList(ReviewVO review);

	List<MemberVO> selectMemberList(MemberVO member);

	List<ReviewVO> selectOwnerReviewList(String id);

	int deleteReiviewFile(int review_idx);

	int selectOwnerReviewListCount();

	List getStarAvg(int store_idx);

}
























































