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

	public List<ReviewVO> reviewList(ReviewVO review) {
		
		return mapper.selectReviewList(review);
	}

//	public List<ReviewVO> getReviewList(int starRow, int listLimit) {
//		// TODO Auto-generated method stub
//		return mapper.getReviewList(starRow, listLimit);
//	}

//	public List<ReviewVO> reviewList(PageVO page) throws Exception {
//		
//		page.makeRow();
//		
//		Long totalCount = mapper.getTotalCount(page);
//		page.makeNum(totalCount);
//		
//		return mapper.selectReviewList(page);
//	}

	
	
}































