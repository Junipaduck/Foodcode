package com.itwillbs.foodcode.mapper;

import java.util.*;

import org.apache.ibatis.annotations.*;

import com.itwillbs.foodcode.vo.*;

public interface ReviewMapper {
	int insertReview(ReviewVO vo);

	int updateReview(ReviewVO vo);

	int deleteReview(@Param("review_idx") int review_idx);

	List<ReviewVO> selectReviewList(ReviewVO vo);
}























































