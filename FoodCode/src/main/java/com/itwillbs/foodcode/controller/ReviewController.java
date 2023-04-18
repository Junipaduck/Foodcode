package com.itwillbs.foodcode.controller;

import java.io.*;
import java.nio.file.*;
import java.text.*;
import java.util.*;

import javax.servlet.http.*;

import org.springframework.beans.factory.annotation.*;
import org.springframework.stereotype.*;
import org.springframework.ui.*;
import org.springframework.validation.*;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.*;
import org.springframework.web.servlet.*;

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
    @RequestMapping(value = "/reviewWritePro.me", method = {RequestMethod.GET, RequestMethod.POST})
    public String reviewWritePro(ReviewVO vo, Model model, HttpSession session) {
    	
    	//로그인 된 회원만 작성 가능하도록 session 아이디 받아오기 
    	
    	// 파일 업로드 경로  
    	String uploadDir = "resources/upload"; // 프로젝트 상의 업로드 경로 
    	String saveDir = session.getServletContext().getRealPath(uploadDir); // 실제 업로드 경로 
    	
    	// 날짜별로 업로드 폴더 생성 위한 코드 
    	try {
			Date date = new Date();
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd");
			vo.setReview_file_path("/" + sdf.format(date));
			
			// 기본 업로드 경로와 서브 디렉토리 경로를 결합하여 저장 
			saveDir = saveDir + vo.getReview_file_path();
			
			// Paths 클래스의 get() 메서드 호출하여 실제 경로를 관리하는 Path 타입 객체 리턴 받기 (파라미터: 실제 업로드 경로) 
			Path path = Paths.get(saveDir);
			
			// Files 클래스의 메서드를 호출하여 Path 객체가 관리하는 경로가 없으면 생성 
			Files.createDirectories(path);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
    	
    	MultipartFile mFile = vo.getFile(); // 단일 파일 
    	String originalFileName = mFile.getOriginalFilename(); // 원본 파일 명 
    	
    	// 파일명 중복 방지를 위한 랜던 ID값 생성 
    	String uuid = UUID.randomUUID().toString();
    	
    	// 생성된  UUID 값을 원본 파일명과 결합하기. subString으로 길이 줄이기 
    	// 랜덤 uuid - 하이픈 앞 글자수가 8개 이므로 인덱스 범위가 0, 8 
    	vo.setReview_file(uuid.substring(0, 8) + "_" + originalFileName);
    	System.out.println("실제 업로드 될 파일명 : " + vo.getReview_file());
    	
    	// 리뷰 insert 코드 
    	
    	// 로그인 된 회원만 작성 가능하도록 세션 아이디 받아오기
    	session.getAttribute("sId");
    	vo.setMember_id(session.getAttribute("sId").toString()); // review 테이블 member_id
    	
    	int insertCount = reviewService.insertReview(vo); 
    	if(insertCount > 0) { // 리뷰 작성 성공 시 [방문후] 페이지로 리다이렉트 
    		
    		// 파일 업로드 코드 
    		/*
    		 * 업로드 된 파일은 MultipartFile 객체에 의해 임시 폴더에 저장되어 있으며 리뷰 작성 성공 시 
    		 * 임시 위치에 저장된 파일을 실제 폴더로 옮기는 작업이 필요하다. 
    		 * transferTo() 메서드를 호출하며 실제 위치로 이동(업로드) 
    		 * 파라미터: File 객체 
    		 * */
    		
    		try {
				mFile.transferTo(new File(saveDir, vo.getReview_file()));
			} catch (IllegalStateException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
    		
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
    public String reviewList(ReviewVO review, Model model, PageVO page) {
    	System.out.println("/reviewList.me");
//    	int listLimit = 10; // 한 페이지에 표시할 게시물 목록 갯수
//    	int pageListLimit = 10; // 한 페이지에 표시할 페이지 목록 갯수 
//    	int starRow = (pageNum -1) * listLimit; // 조회 시작 게시물 번호 계산 
    	
    	// List 객체에 vo 담기 
//    	List<ReviewVO> reviewList = reviewService.reviewList(review);
    	List<ReviewVO> reviewList = reviewService.reviewList(review);
//    	mv.addObject("reviewList", reviewList);
//    	mv.addObject("page", page);
//    	mv.setViewName("store/store_review_list");
    	
    	
    	model.addAttribute("reviewList", reviewList);
//    	List<ReviewVO> reviewList = reviewService.getReviewList(starRow, listLimit);
    	
    	
    	return "store/store_review_list";
//    	return mv;
    }
    
   
    
    
    
    // 점주 답글 작성 페이지로 이동 
    @RequestMapping(value = "/ownerReplyForm.me", method = {RequestMethod.GET, RequestMethod.POST})
    public String ownerReplyForm() {
    	
    	
    	return "owner/owner_reply_form";
    }
    
    // 점주 답글 작성 후 리뷰 게시판 리스트로 다시 이동 
    @PostMapping(value = "/ownerReplyPro.me")
    public String ownerReplyPro() {
    	return "redirect:/reviewList.me";
    }
    
}























































