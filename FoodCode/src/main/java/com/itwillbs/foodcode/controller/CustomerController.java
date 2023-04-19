package com.itwillbs.foodcode.controller;

import java.util.*;

import javax.servlet.http.*;

import org.springframework.beans.factory.annotation.*;
import org.springframework.security.crypto.bcrypt.*;
import org.springframework.stereotype.*;
import org.springframework.ui.*;
import org.springframework.validation.*;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.*;

import com.itwillbs.foodcode.service.*;
//import com.itwillbs.foodcode.service.*;
import com.itwillbs.foodcode.vo.*;

@Controller
public class CustomerController {

    @Autowired
    private CustomerService customerService;
    
    @Autowired 
    private ReviewService reviewService;
    
    @Autowired
    private StoreService storeService;

    @GetMapping(value = "/customerJoin.me")
    public String customerJoin() {
        System.out.println("customerJoin.me");
        // 개인 회원 가입 폼으로 이동

        return "customer/customer_join_form";
    }

    @PostMapping(value = "customerJoinPro.me")
    public String customerJoinPro(MemberVO member, Model model, @RequestParam String member_passwd2) {
        System.out.println("customerJoinPro");
        System.out.println(member);
        
        if(member.getMember_passwd().equals(member_passwd2)) { // 비밀번호와 비밀번호 확인이 동일한지 판단
        	BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
        	String securePasswd = passwordEncoder.encode(member.getMember_passwd()); // 비밀번호 암호화
		System.out.println("암호문 : " + securePasswd);
        	member.setMember_passwd(securePasswd); // 암호화 비밀번호 
        	int insertCnt = customerService.insertMember(member); // 회원가입이 이루어 졌는지 정수에 저장
        	
        	if(insertCnt > 0) { // 회원가입을 성공 했을 때
        		model.addAttribute("msg", "회원 가입 성공!");
        		model.addAttribute("target","main");
        		return "customer/success";
        	} else { // 회원가입을 실패 했을 때
        		model.addAttribute("msg", "회원가입 실패!");
        		return "customer/fail_back";
        	}
        } else { // 비밀번호 확인과 비밀번호 가 서로 다를 때
        	model.addAttribute("msg", "비밀번호가 서로 다름!");
        	return "customer/fail_back";
        }
    }


    @GetMapping(value = "MemberInfo.me")
    public ModelAndView MemberInfo(HttpSession session,Model model) {
        System.out.println("MemberInfo.me"); // 마이페이지로 이동
        String sId = (String) session.getAttribute("sId");
		if(sId == null) { // 세션 아이디가 없을 때 돌려보내기
			model.addAttribute("msg", "잘못된 접근입니다.");
			return new ModelAndView("customer/fail_back");
		}
		
		MemberVO member = customerService.selectMember(sId); // 세션아이디의 멤버 정보를 불러오기
		
		System.out.println(member);
		Map map = new HashMap();
		map.put("member", member); // 맵에 저장 
		
		List bookingList = customerService.bookingList(sId); // 세션아이디의 예약 목록을 불러옴
		map.put("bookingList",bookingList);
		
		List myReviewList = customerService.selectMyReview(sId); // 세션아이디의 리뷰 목록을 불러옴
		
		map.put("myReviewList", myReviewList); // 맵에 저장

		
		

        return new ModelAndView("customer/customer_mypage","map",map);
    }

    @GetMapping(value = "/customerBooking.me")
    public ModelAndView customerBooking(HttpSession session,Model model) {
        System.out.println("customerBooking.me");
        String sId = (String) session.getAttribute("sId"); // 세션아이디가 없을 경우 돌려보내기
		if(sId == null) {
			model.addAttribute("msg", "잘못된 접근입니다.");
			return new ModelAndView("customer/fail_back");
		}
		Map map = new HashMap();
		List bookingList = customerService.bookingList(sId); // 세션 아이디의 예약목록을 불러옴
		map.put("bookingList",bookingList);
		
		List afterBookingList = customerService.afterBookingList(sId); // 세션 아이디의 지난 예약 목록을 불러옴
		map.put("afterBookingList", afterBookingList);
		
        return new ModelAndView("customer/customer_booking","map",map);
    }

    @GetMapping(value = "/customerAfter.me")
    public ModelAndView customerAfter(HttpSession session,Model model) {
        System.out.println("customerAfter.me");
        String sId = (String) session.getAttribute("sId");
		if(sId == null) { // 세션 아이디가 없을 경우 돌려보내기
			model.addAttribute("msg", "잘못된 접근입니다.");
			return new ModelAndView("customer/fail_back");
		}
		List bookingList = customerService.bookingList(sId); // 세션 아이디의 예약목록을 불러옴
		Map map = new HashMap();
		map.put("bookingList",bookingList);
		System.out.println(bookingList);
		
		

        return new ModelAndView("customer/customer_after","map",map);
    }

    @GetMapping(value = "/customerLast.me")
    public ModelAndView customerLast(HttpSession session,Model model) {
        System.out.println("customerLast.me");
        String sId = (String) session.getAttribute("sId");
		if(sId == null) { // 세션아이디가 없을경우 돌려보냄
			model.addAttribute("msg", "잘못된 접근입니다.");
			return new ModelAndView("customer/fail_back");
		}
		
		List bookingList = customerService.bookingList(sId); // 세션 아이디의 예약목록을 불러옴
		Map map = new HashMap();
		map.put("bookingList",bookingList);
		System.out.println(bookingList);

        return new ModelAndView("customer/customer_last","map",map);
    }

    @GetMapping(value = "/customerReview.me")
    public String customerReview(HttpSession session, Model model, ReviewVO review, StoreVO store) {
        System.out.println("customerReview.me");
        String sId = (String) session.getAttribute("sId");
		if(sId == null) {
			model.addAttribute("msg", "잘못된 접근입니다.");
			return "customer/fail_back";
		}
		
		// 위찬영 코드 
//		List myReviewList = customerService.selectMyReview(sId);
//		System.out.println(myReviewList);
//		model.addAttribute("myReviewList", myReviewList);
//		
//		Map map = new HashMap();
//		map.put("myReviewList", myReviewList);
//
//        return new ModelAndView("customer/customer_review","map",map);
//        return new ModelAndView("customer/customer_review");
		
		// 0418 양선정 수정 코드 
		// 마이페이지 리뷰 목록 조회 
		review.setMember_id(session.getAttribute("sId").toString());
//		List<ReviewVO> reviewList = reviewService.reviewList(review);
		List<ReviewVO> reviewList = reviewService.customerReviewList(review);
		List<StoreVO> storeList = storeService.selectStoreList(store);
		
		model.addAttribute("reviewList", reviewList);
		model.addAttribute("storeList", storeList);
		
		return "customer/customer_review";
    }

    @GetMapping(value = "/customerModify.me")
    public ModelAndView customerModify(HttpSession session, Model model) {
        System.out.println("customerModify.me");
		String sId = (String)session.getAttribute("sId"); // 세션아이디를 불러오고 변수에 저장
		
		MemberVO member = customerService.selectMember(sId); // 세션아이디의 정보를 가져옴
		
		
		Map<String, MemberVO> map = new HashMap<String, MemberVO>();
		map.put("member", member);

        return new ModelAndView("customer/customer_modify","map",map);
    }

    @GetMapping(value = "/customerModifyPro.me")
    public String customerModifyPro(MemberVO member,HttpSession session,Model model,@RequestParam String modifyMember,@RequestParam String modifyMember2) {
        System.out.println("customerModifyPro.me");
        String sId = (String)session.getAttribute("sId");
        BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
        String passwd = customerService.getPassword(sId); // 패스워드를 불러옴
        if(encoder.matches(member.getMember_passwd(), passwd)) { // 패스워드가 세션 아이디의 패스워드와 동일함
        	if(modifyMember.equals(modifyMember2)) { // 변경할 비밀번호가 비밀번호 확인과 동일함
        		if(!modifyMember.equals("")) {
        		modifyMember = encoder.encode(modifyMember);  // 변경된 비밀번호를 암호화해서 변수에 저장
        		}
        		int modifyCnt = customerService.modifyMember(sId,member,modifyMember);
	        	if(modifyCnt > 0) { // 정보 수정이 되었을 때
	        		model.addAttribute("msg", "회원 정보 수정 완료!");
	        		model.addAttribute("target","customerModify.me");
	        		return "customer/success";
	        	} else { // 정보 수정이 되지 않았을 때
	        		model.addAttribute("msg", "회원 정보 수정 실패!");
	        		return "customer/fail_back";
	        	}
        	} else { // 변경할 비밀번호가 비밀번호 확인과 동일 하지 않음 
        		model.addAttribute("msg", "변경할 비밀번호가 동일하지 않습니다!");
        		return "customer/fail_back";
        	}
        } else { // 패스워드가 세션 아이디의 패스워드와 동일함 
        	model.addAttribute("msg", "비밀번호 틀림!");
        	return "customer/fail_back";
        }
    }

    @GetMapping(value = "/customerDelete.me")
    public String customerDelete() {
    	return "customer/customer_quit_form";
    }
    @PostMapping(value = "/customerDeletePro.me")
    public String customerDeletePro(HttpSession session,Model model, @RequestParam String member_passwd) {
    	String sId = (String)session.getAttribute("sId");
    	BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
    	if(encoder.matches(member_passwd, customerService.getPassword(sId))) { // 파라미터로 받아온 패스워드와 저장되어있는 비밀번호를 비교
    		// 맞다면
    		int deleteCnt = customerService.deleteMember(sId); // 회원탈퇴 진행
    		if(deleteCnt > 0) { // 회원탈퇴가 되었을 때 세션을 지우고 메인으로 리다이렉트
    			session.invalidate();
    			model.addAttribute("msg", "회원 탈퇴 완료!");
    			model.addAttribute("target","main");
    			return "customer/success";
    		} else { // 패스워드를 비교했을 때 다르다면
    			model.addAttribute("msg", "회원 탈퇴 실패!");
    			return "customer/fail_back";
    		}
    	} else { // 비밀번호를 잘못 입력했을 때
    		model.addAttribute("msg", "비밀 번호가 틀렸습니다!");
    		return "customer/fail_back";
    		
    	}
    	
    }
    
    @GetMapping(value = "/customerReviewModify.me")
    public String customerReviewModify() {
        System.out.println("customerReviewModify.me");


        return "customer/customer_review_modify";
    }
    
    @GetMapping(value = "/customerBookingCancle.me")
    public String customerBookingCancle(String booking_idx) {
    	return "customer/customer_booking_cancle";
    }
    
    @GetMapping(value = "/customerBookingCanclePro.me")
    public String customerBookingCanclePro(String booking_idx, Model model) {
    	System.out.println(booking_idx);
    	int deleteCnt = customerService.customerBookingCancle(booking_idx);
    	if(deleteCnt > 0) {
    		model.addAttribute("msg", "예약 취소가 완료되었습니다.");
    		model.addAttribute("target", "customerBooking.me");
    		return "customer/success";
    	} else {
    		model.addAttribute("msg", "예약이 취소되지 않았습니다. 다시 시도해 주세요.");
    		return "customer/fail_back";
    	}
    }
    

}