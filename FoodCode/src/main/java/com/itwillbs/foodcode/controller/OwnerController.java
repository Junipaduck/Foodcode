package com.itwillbs.foodcode.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.*;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import com.itwillbs.foodcode.service.OwnerService;
import com.itwillbs.foodcode.vo.OwnerVO;

@Controller
public class OwnerController {
	
	@Autowired
	private OwnerService ownerService;
	
	// 점주 회원가입페이지로 이동
	@GetMapping(value = "ownerJoin.me")
	public String ownerJoin() {
		return "owner/owner_join_form";
	}
	
	// 점주 회원가입
	@GetMapping(value = "ownerJoinPro.me")
	public String ownerJoinPro(OwnerVO vo, Model model) {
		int insertCnt = ownerService.insertOwner(vo);
		if(insertCnt > 0) {
			return "redirect:/main";
		} else {
			model.addAttribute("msg", "회원가입 실패!");
			return "fail_back";
		}
	}
	
	// 점주 마이페이지로 이동
	@RequestMapping(value = "owner", method = {RequestMethod.GET, RequestMethod.POST})
	public String owner() {
		return "owner/owner_mypage_storeList";
	}
	
	// 점주 가게 리뷰페이지로 이동
	@RequestMapping(value = "ownerReview", method = {RequestMethod.GET, RequestMethod.POST})
	public String ownerReview() {
		return "owner/owner_mypage_review";
	}
	
	// 점주 가게 예약페이지로 이동
	@RequestMapping(value = "ownerReservation", method = {RequestMethod.GET, RequestMethod.POST})
	public String ownerReservation() {
		return "owner/owner_mypage_reservation";
	}
	
	// 점주 정보 수정페이지로 이동
	@RequestMapping(value = "ownerModify", method = {RequestMethod.GET, RequestMethod.POST})
	public String ownerModify() {
		return "owner/owner_mypage_modify";
	}
	
	// 점주 가게정보 수정페이지로 이동
	@RequestMapping(value = "storeModify", method = {RequestMethod.GET, RequestMethod.POST})
	public String storeModify() {
		return "owner/owner_store_modify";
	}
	
	// 점주 마이페이지에 있는 '새로운 식당 추가' 링크 클릭 시 식당 등록 페이지로 이동
		@RequestMapping(value = "storeRegister", method = {RequestMethod.GET, RequestMethod.POST})
		public String storeRegister() {
			return "owner/owner_store_register";
		}
}