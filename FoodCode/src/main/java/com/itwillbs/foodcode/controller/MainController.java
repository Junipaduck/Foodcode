package com.itwillbs.foodcode.controller;

import java.io.*;
import java.net.*;
import java.net.http.*;
import java.util.*;

import javax.script.*;
import javax.servlet.http.*;

import org.springframework.beans.factory.annotation.*;
import org.springframework.http.*;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.*;
import org.springframework.ui.*;
import org.springframework.validation.annotation.*;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import com.itwillbs.foodcode.service.*;
import com.itwillbs.foodcode.vo.*;

@Controller
public class MainController {

	@Autowired
	private CustomerService customerService;
	@Autowired
	private OwnerService ownerService;
	@Autowired
	private MemberService memberService;
	@Autowired
	private StoreService storeService;
	@Autowired
    private KaKaoService ks;
	
	@RequestMapping(value = "main", method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView index(StoreVO store, Model model) {
		
		// 메인 페이지에서 맛집 추천을 위한 store 조회 코드 
		List<StoreVO> storeList = storeService.selectStoreList(store);
		model.addAttribute("storeList", storeList);
		
		// 예약건수차트
		List<StoreVO> bookingChart = storeService.bookingChart(store); 
		model.addAttribute("bookingChart", bookingChart);
		System.out.println("예약건수차트 값 : " + bookingChart);
		
		Map<String, Object> map = new HashMap<>();
		map.put("bookingChart", bookingChart);
		
		return new ModelAndView("index","map",map);
		
//		return "index";
	}
	
	
	
	
	
	
//	@RequestMapping(value = "store.so", method = {RequestMethod.GET, RequestMethod.POST})
//	public String store() {
//		return "store/store_information";
//	}
	
	
	// 로그인 화면으로 이동
	@RequestMapping(value = "login.me", method = {RequestMethod.GET, RequestMethod.POST})
	public String ownerLogin(@RequestParam(defaultValue = "") String member_id) {
		return "member/member_login_form";
	}
	
	
	
	// 로그인 버튼 클릭 시 
	@PostMapping(value = "loginPro.me")
	public String ownerLoginPro(MemberVO member, HttpSession session, Model model) {
		
		System.out.println("아이디 : " + member.getMember_id() + ", 패스워드 : " + member.getMember_passwd());
		BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
		String passwd = customerService.getPasswd(member);
		if(encoder.matches(member.getMember_passwd(), passwd)) {
			member.setMember_passwd(passwd);
			boolean isSuccess = customerService.isSuccessMember(member);
			System.out.println(isSuccess);
			if(isSuccess) {
				//로그인 성공 시 세션 객체에 아이디 저장 
				session.setAttribute("sId", member.getMember_id());
				return "redirect:/main"; // 로그인 성공 시 -> main 페이지로 리다이렉트 이동 
			} else {
				model.addAttribute("msg","로그인 실패!");
				return "customer/fail_back";
			}	
		} else {
			model.addAttribute("msg","로그인 실패!");
			return "customer/fail_back";
		}
		
		
		
	}
	
	// 로그인 후 아이디 클릭시 일반회원인지 점주인지 판별하여 각각 마이페이지 이동
	// 0415최보아 - 점주회원은 마이페이지 이동 시 가게 정보 가져가야함 - store_idx = 1로 하드코딩
	@GetMapping("/mypage.me")
	public String mypage(HttpSession session, Model model, StoreVO store) {
//		return "customer/customer_mypage";
		
		String id = (String)session.getAttribute("sId");
		if(id == null) {
			model.addAttribute("msg", "잘못된 접근입니다!");
			return "fail_back";
		}
		MemberVO member = memberService.getMemberInfo(id);
		model.addAttribute("member", member);
		
		// 점주회원 가게 정보 조회--------------------------------
		List<StoreVO> storeInfo = ownerService.selectStore(id);
//		System.out.println(storeInfo);
		model.addAttribute("storeInfo", storeInfo);
		
		// 마이페이지 접근 오류로 인해 잠시 주석 
		// 점주회원 예약 정보 조회--------------------------------
//		List<BookingVO> storeBooking = ownerService.showBooking(id);
//		System.out.println(storeBooking);
//		model.addAttribute("storeBooking", storeBooking);
		
		
		if(member.getMember_type().equals("c")) {
			return "redirect:/MemberInfo.me";
		} else {
			return "owner/owner_mypage";
		}
		
		
	}
	
	// 로그아웃 
	@GetMapping(value = "logout.me")
	public String logout(HttpSession session) {
		session.invalidate(); // 세션 초기화 
		return "redirect:/main"; // 로그아웃 후 메인화면으로 리다이렉트 이동 
	}
	
	// 회원가입 선택 창 --> 개인/ 점주 
	@GetMapping(value = "memberJoin.me")
	public String member() {
		return "member/member_join";
	}
	
	// 메인화면 -> 이용안내 페이지 이동
	@GetMapping(value = "service_view.no")
	public String service() {
		return "notice/service_view";
	}
	
	// 카카오 로그인 및 회원가입
    @GetMapping("/kakao")
    public String getCI(@RequestParam String code, Model model, HttpSession session) throws IOException {
        System.out.println("code = " + code);
        String access_token = ks.getToken(code); 
        Map<String, Object> userInfo = ks.getUserInfo(access_token);
        model.addAttribute("code", code);
        model.addAttribute("access_token", access_token);
        model.addAttribute("userInfo", userInfo);
        String email = (String)userInfo.get("email");

        
    	String id = customerService.JoinPerson(email);
    	System.out.println(id);
    	if(id == null || id.equals("")) {
    		return "customer/kakao_join_form";
    	} else {
    		session.setAttribute("sId", id);
    		return "index";
    	}
    	
	}
}





























































