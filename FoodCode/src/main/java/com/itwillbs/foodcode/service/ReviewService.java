package com.itwillbs.foodcode.service;

import java.util.*;

import org.springframework.beans.factory.annotation.*;
import org.springframework.stereotype.*;

import com.itwillbs.foodcode.mapper.*;
import com.itwillbs.foodcode.vo.*;

@Service
public class ReviewService {

	@Autowired
	private ReviewMapper mapper;
	
	public int insertReview(ReviewVO vo) {
		return mapper.insertReview(vo);
	}

	public int updateReview(ReviewVO vo) {
		
		return mapper.updateReview(vo);
	}

	public int deleteReview(int review_idx) {
		System.out.println("deleteReview - Service");
		return mapper.deleteReview(review_idx);
	}

	public List<ReviewVO> reviewList(ReviewVO vo) {
		
		return mapper.selectReviewList(vo);
	}
	
}































