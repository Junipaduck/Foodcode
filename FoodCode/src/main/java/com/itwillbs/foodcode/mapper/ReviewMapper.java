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

	List<ReviewVO> selectOwnerReviewList(@Param("id") String id,
										@Param("searchType") String searchType, 
										@Param("searchKeyword") String searchKeyword, 
										@Param("startRow") int startRow, 
										@Param("listLimit") int listLimit);

	int deleteReiviewFile(int review_idx);

	int selectOwnerReviewListCount();

	List getStarAvg(int store_idx);

	ReviewVO selectReview(int review_idx);

	ReplyVO selectReply(int review_idx);

	int insertReviewReply(ReplyVO reply);

	MemberVO selectMemberInfo(String id);

	int selectReplyCount(int review_idx);

	// 점주 회원 리뷰 삭제 신청 버튼 
	int updateOwnerReview(@Param("review_idx") int review_idx, @Param("review_report") String review_report);

	List<ReviewVO> reviewChart(StoreVO store);

	// 리뷰가 존재하는 지 판단하는 코드 
	int selectBookingCount(int booking_idx);

}
























































