package com.itwillbs.foodcode.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.*;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import com.itwillbs.foodcode.service.OwnerService;
import com.itwillbs.foodcode.vo.MemberVO;
import com.itwillbs.foodcode.vo.OwnerVO;

@Controller
public class OwnerController {
	
	@Autowired
	private OwnerService ownerService;
	
	// 점주 회원가입페이지로 이동
	@GetMapping(value = "/ownerJoin.me")
	public String ownerJoin() {
		return "owner/owner_join_form";
	}
	
	// 점주 회원가입
	@GetMapping(value = "ownerJoinPro.me")
	public String ownerJoinPro(MemberVO member, Model model, @RequestParam String member_passwd2) {
		if(member.getMember_passwd().equals(member_passwd2)) {
			BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
			String securePasswd = passwordEncoder.encode(member.getMember_passwd());
			member.setMember_passwd(securePasswd);
			int insertCnt = ownerService.insertOwner(member);
			if(insertCnt > 0) {
				return "redirect:/main";
			} else {
				model.addAttribute("msg", "회원가입 실패!");
				return "fail_back";
			}
		} else {
			model.addAttribute("msg", "비밀번호가 서로 다름!");
			return "fail_back";
		}
		
	}
	
//	// 점주 마이페이지로 이동
//	@RequestMapping(value = "owner", method = {RequestMethod.GET, RequestMethod.POST})
//	public String owner() {
//		return "owner/owner_mypage_storeList";
//	}
	
	// 점주 가게 리뷰페이지로 이동
	@RequestMapping(value = "ownerReview.me", method = {RequestMethod.GET, RequestMethod.POST})
	public String ownerReview() {
		return "owner/owner_mypage_review";
	}
	
	// 점주 가게 예약페이지로 이동
	@RequestMapping(value = "ownerReservation.me", method = {RequestMethod.GET, RequestMethod.POST})
	public String ownerReservation() {
		return "owner/owner_mypage_reservation";
	}
	
	// 점주 정보 수정페이지로 이동
	@RequestMapping(value = "ownerModify.me", method = {RequestMethod.GET, RequestMethod.POST})
	public String ownerModify() {
		return "owner/owner_mypage_modify";
	}
	
	// 점주 가게정보 수정페이지로 이동
	@RequestMapping(value = "storeModify.me", method = {RequestMethod.GET, RequestMethod.POST})
	public String storeModify() {
		return "owner/owner_store_modify";
	}
	
	// 점주 마이페이지에 있는 '새로운 식당 추가' 링크 클릭 시 식당 등록 페이지로 이동
		@RequestMapping(value = "storeRegister.me", method = {RequestMethod.GET, RequestMethod.POST})
		public String storeRegister() {
			return "owner/owner_store_register";
		}
}
