package com.itwillbs.foodcode.mapper;

import java.util.*;

import org.apache.ibatis.annotations.*;

import com.itwillbs.foodcode.vo.*;

public interface ReviewMapper {
	int insertReview(ReviewVO vo);

	int updateReview(ReviewVO vo);

	int deleteReview(@Param("review_idx") int review_idx);

	List<ReviewVO> selectReviewList(ReviewVO review);

	List<ReviewVO> getReviewList(int starRow, int listLimit);

//	List<ReviewVO> selectReviewList(PageVO page) throws Exception;

//	Long getTotalCount(PageVO page);

}























































