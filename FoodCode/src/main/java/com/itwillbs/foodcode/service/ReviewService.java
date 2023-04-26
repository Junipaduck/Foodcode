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

//	public List<ReviewVO> reviewList(ReviewVO review) {
//		
//		return mapper.selectReviewList(review);
//	}

	public List<ReviewVO> customerReviewList(ReviewVO review) {
		
		return mapper.customerReviewList(review);
	}

	//리뷰 게시판 페이징 - 게시물 목록 조회 
	public List<ReviewVO> getReviewList(String searchType, String searchKeyword, int startRow, int listLimit) {

		return mapper.selectReviewList(searchType, searchKeyword, startRow, listLimit);
	}
	
	// 글 목록 총 갯수 조회 
	public int getReviewListCount(String searchType, String searchKeyword) {
		
		return mapper.selectReviewListCount(searchType, searchKeyword);
	}

	// 상세 페이지 리뷰 조회
	public List<ReviewVO> reviewList(ReviewVO review) {
		return mapper.reviewList(review);
	}

	public List<MemberVO> getMemberList(MemberVO member) {

		return mapper.selectMemberList(member);
	}

	public List<ReviewVO> getOwnerReivewList(String id) {

		return mapper.selectOwnerReviewList(id);
	}

	// 리뷰 수정 시 파일 삭제
	public int removeReviewFile(int review_idx) {
		
		return mapper.deleteReiviewFile(review_idx);
	}

	public int getOwnerReviewListCount() {
		
		return mapper.selectOwnerReviewListCount();
	}

	// 리뷰 별점 평균 계산
	public List getStarAvg(int store_idx) {
		return mapper.getStarAvg(store_idx);
	}

	// 리뷰 상세 페이지 
	public ReviewVO getReview(int review_idx) {
		
		return mapper.selectReview(review_idx);
	}

	// 댓글 
	public ReplyVO getReply(int review_idx) {

		return mapper.selectReply(review_idx);
	}

	// 답글 insert
	public int insertReviewReply(ReplyVO reply) {
		
		return mapper.insertReviewReply(reply);
	}

	// 리뷰 게시판 답글 작성 시 로그인 판단 
	public MemberVO getMemberInfo(String id) {
		
		return mapper.selectMemberInfo(id);
	}

	// 댓글 유무 확인용 
	public int getReplyCount(int review_idx) {
		
		return mapper.selectReplyCount(review_idx);
	}

	public int ownerReviewDelete(int review_idx) {

		return mapper.updateOwnerReview(review_idx);
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































