package com.itwillbs.foodcode.controller;

import java.util.*;

import org.springframework.beans.factory.annotation.*;
import org.springframework.stereotype.*;
import org.springframework.ui.*;
import org.springframework.validation.*;
import org.springframework.web.bind.annotation.*;

import com.itwillbs.foodcode.service.*;
import com.itwillbs.foodcode.vo.*;

@Controller
public class ReviewController {

	@Autowired
	private ReviewService reviewService;
	
    // 예약관리 -> 방문후 -> 리뷰 
    @GetMapping(value = "/customerReviewWrite.me")
    public String customerReviewWrite() {
    	return "customer/customer_review_write";
    }
	
    // 리뷰 작성 
    @RequestMapping(value = "reviewWritePro.me", method = {RequestMethod.GET, RequestMethod.POST})
    public String reviewWritePro(ReviewVO vo, Model model) {
    	int insertCount = reviewService.insertReview(vo); 
    	if(insertCount > 0) { // 리뷰 작성 성공 시 [방문후] 페이지로 리다이렉트 
    		return "redirect:/customerAfter.me";
    	} else { 
    		model.addAttribute("msg", "리뷰 등록 실패!");
    		return "fail_back";
    	}
    }
    
     //리뷰 수정 페이지로 이동
    @RequestMapping(value = "/reviewModifyForm.me", method = {RequestMethod.GET, RequestMethod.POST})
    public String reviewModifyForm() {
    	return "customer/customer_review_modify";
    }
    
    // 리뷰 수정 폼 -> 
    @RequestMapping(value = "/reviewModifyPro.me", method = {RequestMethod.GET, RequestMethod.POST})
    public String reviewModifyPro(ReviewVO vo, Model model) {
    	int updateCount = reviewService.updateReview(vo);
    	if(updateCount > 0) { // 리뷰 수정 성공 시 [리뷰관리] 페이지로 리다이렉트 
    		return "redirect:/customerReview.me";
    	} else { // 리뷰 수정 실패 시 알람 창 띄운 후 돌아오기 
    		model.addAttribute("msg", "리뷰 수정 실패!");
    		return "fail_back";
    	}
    }
    
    // 리뷰 삭제 
    // url 주소에 파라미터 넘기는 거 까먹지 말기 !!! 
    @RequestMapping(value = "/reviewDelete.me", method = {RequestMethod.GET, RequestMethod.POST})
    public String reviewDelete(@RequestParam int review_idx, Model model) {
    	System.out.println(review_idx);
    	int deleteCount = reviewService.deleteReview(review_idx);
    	if(deleteCount > 0) { // 리뷰 삭제 성공 시 [리뷰관리] 페이지로 이동
    		
    		return "redirect:/customerReview.me";
    	} else {
    		model.addAttribute("msg", "리뷰 삭제 실패!");
    		return "fail_back";
    	}
    }
    
    // [리뷰목록] 클릭 시 review_list.jsp 페이지로 이동 -> 리뷰 목록 조회 가능 
    @RequestMapping(value = "/reviewList.me", method = {RequestMethod.GET, RequestMethod.POST})
    public String reviewList(ReviewVO vo, Model model) {
    	
    	// List 객체에 vo 담기 
    	List<ReviewVO> reviewList = reviewService.reviewList(vo);
    	
    	model.addAttribute("reviewList", reviewList);
    	
    	return "store/store_review_list";
    }
    
    
}























































