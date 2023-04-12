package com.itwillbs.foodcode.controller;

import java.util.Optional;

import javax.servlet.http.*;

import org.springframework.beans.factory.annotation.*;
import org.springframework.stereotype.*;
import org.springframework.ui.*;
import org.springframework.web.bind.annotation.*;

import com.itwillbs.foodcode.service.*;
import com.itwillbs.foodcode.vo.*;

@Controller
public class MainController {

	@Autowired
	private CustomerService customerService;
	@Autowired
	private OwnerService ownerService;
	
	@RequestMapping(value = "main", method = {RequestMethod.GET, RequestMethod.POST})
	public String index() {
		return "index";
	}
	
//	@RequestMapping(value = "store.so", method = {RequestMethod.GET, RequestMethod.POST})
//	public String store() {
//		return "store/store_information";
//	}
	
	@RequestMapping(value = "booking.bo", method = {RequestMethod.GET, RequestMethod.POST})
	public String booking() {
		return "booking/booking";
	}
	
	// 로그인 화면으로 이동
	@RequestMapping(value = "login.me", method = {RequestMethod.GET, RequestMethod.POST})
	public String ownerLogin() {
		return "member/member_login_form";
	}
	
	
	
	// 로그인 버튼 클릭 시 
	@PostMapping(value = "loginPro.me")
	public String ownerLoginPro(CustomerVO vo, HttpSession session, Model model) {
		
		System.out.println("아이디 : " + vo.getC_id() + ", 패스워드 : " + vo.getC_passwd());
		
		boolean isSuccess = customerService.isSuccessCustomer(vo);
		System.out.println(isSuccess);
		if(isSuccess) {
			//로그인 성공 시 세션 객체에 아이디 저장 
			session.setAttribute("sId", vo.getC_id());
			return "redirect:/main"; // 로그인 성공 시 -> main 페이지로 리다이렉트 이동 
			
		} else {
			model.addAttribute("msg","로그인 실패!");
			return "fail_back";
		}
		
	}
	
	// 로그인 후 아이디 클릭시 일반회원인지 점주인지 판별하여 각각 마이페이지 이동
	@GetMapping("/mypage.me")
	public String mypage(HttpSession session, Model model) {
		return "customer/customer_mypage";
//		String id = (String)session.getAttribute("sId");
//		CustomerVO customer = customerService.getCustomerInfo(id);
//		OwnerVO owner = ownerService.getOwnerInfo(id);
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
	
	
}





























































