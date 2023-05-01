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
	
	@Autowired
	private StoreService storeService;
	
	@Autowired
	private MemberService memberService;
	
	@Autowired
	private BookingService bookingService;
	
    // 예약관리 -> 방문후 -> 리뷰 
    @GetMapping(value = "/customerReviewWrite.me")
    public String customerReviewWrite(@RequestParam int store_idx, @RequestParam int booking_idx, Model model, HttpServletResponse response) {
    	System.out.println("왔니----------------------------------------------------");
    	
      	// 이미 리뷰가 존재하는 지 판단을 위한 코드
    	// 리뷰를 count(*)해서 count 값이 0보다 큰 경우 - 즉, 리뷰가 존재할 경우 경고창 출력 후 이전페이지로 돌아감
    	int reviewCount = reviewService.getBookingCount(booking_idx);
    	System.out.println("-------------------------------------선정확인" + reviewCount);
    	if(reviewCount > 0) {
			try {
				response.setContentType("text/html; charset=UTF-8");
				PrintWriter out = response.getWriter();
				out.println("<script>");
				out.println("alert('이미 리뷰를 작성하셨습니다!')");
				out.println("history.back()");
				out.println("</script>");
				out.flush();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
    	}
    	
		// 리뷰 작성 시 merchant_uid 넘겨 주려고 
//    	BookingVO booking = bookingService.getMerchantUid(booking_idx);
    	String merchant_uid = bookingService.getMerchantUid(booking_idx);
    	model.addAttribute("merchant_uid", merchant_uid);
    	System.out.println("----------------------------------------" + merchant_uid);
//    	System.out.println("----------------------------------------" + booking);
    	
//    	return "customer/customer_review_write";
    	return "customer/customer_review_write";
    }
	
    // 리뷰 작성 
    @PostMapping(value = "/reviewWritePro.me")
    public String reviewWritePro(@RequestParam int store_idx, ReviewVO vo, @RequestParam String merchant_uid, Model model, HttpSession session) {
    	
    	

    	// 파일 업로드 경로 설정  
    	String uploadDir = "resources/upload"; // sts에서 저장되는 경로(이 곳에 실제로 파일이 업로드 되지는 않음) 
    	String saveDir = session.getServletContext().getRealPath(uploadDir); // 실제 파일이 저장되는 경로 
    	
    	// 날짜별로 업로드 폴더 생성
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
    	
    	// merchant_uid 저장하기 
//    	vo.setMerchant_uid(merchant_uid);
//    	System.out.println("---------------------------------------흠흠흠" + merchant_uid);
    	
    	int insertCount = reviewService.insertReview(vo); 
    	
    	if(insertCount > 0) { // 리뷰 작성 성공 시 [방문후] 페이지로 리다이렉트 

    		
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
    public String reviewModifyForm(@RequestParam int review_idx, Model model, HttpSession session) {
    	
    	// 실제 로그인한 세션 아이디만 리뷰 수정이 가능하도록 권한 설정
    	// 로그인 하지 않았을 경우 경고 메세지 출력
    	String id = (String)session.getAttribute("sId");
    	if(id == null) {
    		model.addAttribute("msg", "로그인 필수 입니다!");
    		return "success";
    	}
    	
		// 리뷰 조회용 
		ReviewVO review = reviewService.getReview(review_idx);
		model.addAttribute("review", review);
    	
    	return "customer/customer_review_modify";
    }
    
    // 리뷰 수정 폼 -> 
    @RequestMapping(value = "/reviewModifyPro.me", method = {RequestMethod.GET, RequestMethod.POST})
    public String reviewModifyPro(ReviewVO vo, Model model, HttpSession session) {

    	
    	// 리뷰 수정 시 파일 처리 코드 - 0422
		boolean isUploadProcess = false; // 업로드 작업 수행 여부를 저장하는 변수 선언
		
		String uploadDir = "/resources/upload"; // 프로젝트 상의 업로드 경로
		String saveDir = session.getServletContext().getRealPath(uploadDir);
		
		
		// 파일이 null이 아니거나 파일명이 널스트링이 아닌 경우 -> 파일이 존재할 경우 
		if(vo.getFile() != null && !vo.getFile().getOriginalFilename().equals("")) {
			isUploadProcess = true;
			
			// BoardVO 객체에 전달된 MultipartFile 객체로부터 파일명 알아내기
			String originalFileName = vo.getFile().getOriginalFilename();
			
			// 파일명 중복 방지를 위한 대책
			String uuid = UUID.randomUUID().toString();
			vo.setReview_file(uuid.substring(0, 8) + "_" + originalFileName);
			
			// 날짜별 디렉토리명 생성
			Date date = new Date();
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd");
			vo.setReview_file_path("/" + sdf.format(date));
			saveDir = saveDir + vo.getReview_file_path();
		}    
    	
    	int updateCount = reviewService.updateReview(vo);
    	if(updateCount > 0) { // 리뷰 수정 성공 시 [리뷰관리] 페이지로 리다이렉트 
    		
			if(isUploadProcess) { // 업로드 할 파일이 있을 경우
				try {
					// 디렉토리 생성
					Path path = Paths.get(saveDir);
					Files.createDirectories(path);
					
					// BoardVO 객체에 전달된 MultipartFile 객체 꺼내서 파일 업로드 처리
					MultipartFile mFile = vo.getFile(); // 단일 파일
					mFile.transferTo(new File(saveDir, vo.getReview_file()));
				} catch (IllegalStateException e) {
					e.printStackTrace();
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
    		
    		return "redirect:/customerReview.me";
    	} else { // 리뷰 수정 실패 시 알람 창 띄운 후 돌아오기 
    		model.addAttribute("msg", "리뷰 수정 실패!");
    		return "fail_back";
    	}
    }
    
    // 리뷰 수정 시 파일 삭제 및 수정 코드 
    @ResponseBody
    @PostMapping(value = "/ReviewDeleteFile.bo")
	public void deleteFile(
			@RequestParam int review_idx, 
			@RequestParam String review_file,
			@RequestParam String review_file_path,
			HttpServletResponse response,
			HttpSession session) {
		
		try {
			// 응답데이터 출력을 위한 response 객체의 인코딩 타입 설정
			response.setCharacterEncoding("UTF-8");
			
			// Service - removeBoardFile() 메서드 호출하여 파일 삭제 요청
			// => 파라미터 : 글번호   리턴타입 : int(deleteCount)
			int deleteCount = reviewService.removeReviewFile(review_idx);
			
			// DB 파일 삭제 성공 시 실제 파일을 서버에서 삭제
			if(deleteCount > 0) {
				String uploadDir = "/resources/upload"; // 프로젝트 상의 업로드 경로
				String saveDir = session.getServletContext().getRealPath(uploadDir); // 실제 업로드 경로
				// 실제 업로드 경로에 서브 디렉토리명 결합
				saveDir += review_file_path;
				
				// Paths.get() 메서드를 호출하여 파일 경로 관리 객체(Path) 생성
				// => 업로드 디렉토리와 파일명 결합하여 전달
				Path path = Paths.get(saveDir + "/" + review_file);
				// Files 클래스의 deleteIfExists() 메서드를 호출하여 파일 존재 시 삭제
				// => 파라미터 : 경로
				Files.deleteIfExists(path);
				
				// response 객체의 getWriter() 메서드를 호출하여 PrintWriter 객체를 얻어온 후
				// 다시 print() 또는 println() 메서드를 호출하여 응답데이터 출력
				response.getWriter().print("true");
			} else {
				response.getWriter().print("false");
			}
			
		} catch (IOException e) {
			e.printStackTrace();
		}
		
	}
    
    // 리뷰 삭제 
    // url 주소에 파라미터 넘기는 거 까먹지 말기 !!! 
    @RequestMapping(value = "/reviewDelete.me", method = {RequestMethod.GET, RequestMethod.POST})
    public String reviewDelete(@RequestParam int review_idx, Model model, HttpServletResponse response) {
    	System.out.println(review_idx);
    	int deleteCount = reviewService.deleteReview(review_idx);
    	if(deleteCount > 0) { // 리뷰 삭제 성공 시 [리뷰관리] 페이지로 이동
    		
    		// 리뷰 삭제 전 경고 문구 출력
			try {
				response.setContentType("text/html; charset=UTF-8");
				PrintWriter out = response.getWriter();
				out.println("<script>");
				out.println("confirm('정말 리뷰를 삭제하시겠습니까?')");
				out.println("history.back()");
				out.println("</script>");
				out.flush();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
    		
    		return "redirect:/customerReview.me";
    	} else {
    		model.addAttribute("msg", "리뷰 삭제 실패!");
    		return "fail_back";
    	}
    }
    
    // [리뷰목록] 클릭 시 review_list.jsp 페이지로 이동 -> 리뷰 목록 조회 가능 
    @RequestMapping(value = "/reviewList.me", method = {RequestMethod.GET, RequestMethod.POST})
    public String reviewList(ReviewVO review, 
    						 Model model,
    						 StoreVO store,
    						@RequestParam(defaultValue = "") String searchType,
    						@RequestParam(defaultValue = "") String searchKeyword,
    						@RequestParam(defaultValue = "1") int pageNum,
    						HttpSession session
    						) {
    	System.out.println("/reviewList.me");
    	
    	//페이징 처리 - 조회 목록 갯수 조절 시 사용하는 변수 
    	int listLimit = 10;
		int startRow = (pageNum - 1) * listLimit; // 조회 시작 행번호(startRow) 계산 => 0, 10, 20...

		
		
    	// List 객체에 vo 담기 - 0419 백업
//    	List<ReviewVO> reviewList = reviewService.reviewList(review);
//    	model.addAttribute("reviewList", reviewList);
		
		List<ReviewVO> reviewList = reviewService.getReviewList(searchType, searchKeyword, startRow, listLimit);
		
		// 리뷰 페이지에 업체명 출력을 위한 코드 0420
		List<StoreVO> storeInfo = storeService.getStoreInfo(store);

		// 1. 전체 게시물 수 조회 
		int listCount = reviewService.getReviewListCount(searchType, searchKeyword);
		
		// 2. 한 페이지에서 표시할 페이지 목록 갯수 설정 
		int pageListLimit = 10; // 페이지 목록 갯수를 10개로 제한

		// 3. 전체 페이지 목록 수 계산 
		int maxPage = listCount / listLimit + (listCount % listLimit > 0 ? 1 : 0);

		// 4. 시작 페이지 번호 계산
		int startPage = (pageNum - 1) / pageListLimit * pageListLimit + 1;

		// 5. 끝 페이지 번호 계산 
		int endPage = startPage + pageListLimit - 1;

		// 끝 페이지 번호가 최대 페이지 번호 보다 클 경우 끝 페이지 번호를 최대 페이지 번호로 교체
		if(endPage > maxPage) {
			endPage = maxPage;
		}
		
		// 페이징 처리를 저장하는 PageInfo 객체 생성 
		PageInfo pageInfo = new PageInfo(listCount, pageListLimit, maxPage, startPage, endPage);
		
		// 답글 달기 버튼 개인회원 / 점주회원 구분을 위한 코드
		
		model.addAttribute("reviewList", reviewList);
		model.addAttribute("pageInfo", pageInfo);
		model.addAttribute("storeInfo", storeInfo);
    	

    	
    	return "store/store_review_list";
    }
    

   
    // 리뷰 상세 보기 
    @GetMapping(value = "/ReviewDetail.me")
    public String reviewDetail(@RequestParam int review_idx, @RequestParam int store_idx, Model model, HttpSession session) {
    	
    	System.out.println(store_idx);
    	
    	String id = (String)session.getAttribute("sId");
    	
    	ReviewVO review = reviewService.getReview(review_idx);
    	model.addAttribute("review", review);
    	
    	
    	ReplyVO reply = reviewService.getReply(review_idx);
    	model.addAttribute("reply", reply);
    	
    	
    	return "store/store_review_view";
    }
    
    
    // 점주 답글 작성 페이지로 이동 
	@RequestMapping(value = "/ownerReplyForm.me", method = {RequestMethod.GET, RequestMethod.POST})
    public String ownerReplyForm(@RequestParam(defaultValue = "1") int review_idx, @RequestParam int store_idx, HttpSession session, Model model) {
    	
    	String id = (String)session.getAttribute("sId");
    	
    	System.out.println("-----------------------------------------------------아이디 : " + id);
    	
    	// 로그인 하지 않았을 경우 
    	if(id == null) {
    		model.addAttribute("msg", "로그인 필수!");
    		model.addAttribute("target", "login.me");
    		return "success";
    	} 
    	
    	// 0425 이미 댓글이 존재할 시 경고 문구 출력
    	ReplyVO reply = reviewService.getReply(review_idx);
    	
    	System.out.println("--------------------------------------------------뭐지 : " + review_idx);
    	
    	MemberVO member = reviewService.getMemberInfo(id);
    	member.setMember_id(id);
    	model.addAttribute("member", member);
    	
    	ReviewVO review = reviewService.getReview(review_idx);
    	model.addAttribute("review", review);
    	
    	
    	// 점주회원인지 판단 'o'
    	if(!member.getMember_type().equals("o")) {
    		model.addAttribute("msg", "답글 작성 권한이 없습니다");
    		return "fail_back";
    	} 
    	
    	int getStoreCount = storeService.getStoreOwner(id, store_idx);
    	
    	// 댓글 유무 판단용 메서드 호출 
    	
    	int selectReplyCount = reviewService.getReplyCount(review_idx);
    	
		// 해당 가게의 점주회원인지 판단 
		if(getStoreCount > 0) { // 해당 가게의 점주가 맞음 
			
		   	if(selectReplyCount > 0) { // 댓글이 존재할 시 
	    		model.addAttribute("msg", "이미 답글을 작성하셨습니다!");
	    		return "fail_back";
	    	} else { // 댓글이 존재하지 않을 시 
	    		return "owner/owner_reply_form";
	    	}
		   	
		} else { // 해당 가게의 점주가 아님
			model.addAttribute("msg", "해당 가게의 점주가 아닙니다.");
			return "fail_back";
		}
    	
    }
    
    
    // 점주 답글 작성 후 리뷰 게시판 리스트로 다시 이동 
    @GetMapping(value = "/ownerReplyPro.me")
    public String ownerReplyPro(ReplyVO reply, Model model, @RequestParam int review_idx, HttpSession session) {

    	reply.setReview_idx(review_idx);
    	System.out.println("--------------------------------------" + review_idx);
    	

		int insertCount = reviewService.insertReviewReply(reply);
		
		
		if(insertCount > 0) {
			return "redirect:/reviewList.me";
		} else {
			model.addAttribute("msg", "댓글 작성 실패!");
			return "fail_back";
		}
    	
    }
    
    // 리뷰 삭제 요청 버튼 클릭 시 
    @GetMapping(value = "/ownerReviewReport.me")
    public String ownerReviewReport(@RequestParam int review_idx, HttpSession session, Model model, HttpServletResponse response) {
    	
    	// 리뷰 삭제 요청 클릭시 update 구문을 실행하여 delete_auth_status를 "Y"로 변경한다. 
    	// 삭제 요청을 하지 않았을 시 항상 "N"인 상태 
    	
    	//로그인 한 점주 회원만 삭제 요청 가능 
    	String id = (String)session.getAttribute("sId");
    	
    	if(id == null) {
    		model.addAttribute("msg", "삭제 요청 권한이 없습니다!");
    		return "fail_back";
    	}
    	
    	// delete_auth_status가 존재하는지 판단 하기 위해 
    	ReviewVO review = reviewService.getReview(review_idx);
    	model.addAttribute("review", review);
    	
    	// 이미 삭제 요청을 한 경우 
    	if(review.getDelete_auth_status().equals("Y")) {
    		model.addAttribute("msg", "이미 삭제 요청이 접수되었습니다!");
    		return "fail_back";
    	}
    	
    	return "owner/owner_review_report";
    }
    
    @PostMapping(value = "/ownerReviewDelete.me")
    public String ownerReviewDelete(@RequestParam int review_idx, @RequestParam String review_report, HttpSession session, Model model, HttpServletResponse response) {
    	
    	
    	
    	// 삭제 버튼을 누르면 delete_auth_status를 "Y"로 변경 
    	int reviewUpdateCount = reviewService.ownerReviewDelete(review_idx, review_report);
    	
    	if(reviewUpdateCount > 0) { // 리뷰 삭제 신청이 성공하였을 경우 
			try {
				response.setContentType("text/html; charset=UTF-8");
				PrintWriter out = response.getWriter();
				out.println("<script>");
				out.println("confirm('정말 리뷰 삭제 요청을 하시겠습니까?')");
				out.println("</script>");
				out.flush();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
    		return "owner/owner_mypage";
    	} else {
    		model.addAttribute("msg", "리뷰 삭제 신청에 실패하였습니다!");
    		return "fail_back";
    	}
    	
    	
    }
    
}























































