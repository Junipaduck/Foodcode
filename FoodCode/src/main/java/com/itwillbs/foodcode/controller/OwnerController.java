package com.itwillbs.foodcode.controller;

import java.util.*;

import javax.servlet.http.*;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.*;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.*;

import com.itwillbs.foodcode.service.OwnerService;
import com.itwillbs.foodcode.vo.MemberVO;

@Controller
public class OwnerController {
	
	@Autowired
	private OwnerService ownerService;
	
	// 점주 회원가입페이지로 이동
	@GetMapping(value = "/ownerJoin.me")
	public String ownerJoin() {
		return "owner/owner_join_form";
	}
	
	// 점주 마이페이지에서 왼쪽 배너의 내 식당 클릭 시
	@GetMapping(value = "/ownerPage.me")
	public String ownerPage() {
		return "owner/owner_mypage";
	}
	
	// 점주 회원가입
	@GetMapping(value = "/ownerJoinPro.me")
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
	
	// 점주 가게 리뷰페이지로 이동
	@GetMapping(value = "/ownerReview.me")
	public String ownerReview() {
		return "owner/owner_mypage_review";
	}
	
	// 점주 회원 정보 수정 페이지로 이동
	@GetMapping(value = "/ownerModify.me")
	public ModelAndView ownerModify(HttpSession session, Model model) {
		String id = (String)session.getAttribute("sId");
//		if(id == null) {
//			model.addAttribute("msg", "잘못된 접근입니다");
//			return "fail_back";
//		}
		
		MemberVO member = ownerService.selectMember(id);
		model.addAttribute("member", member);
		
		Map<String, MemberVO> map = new HashMap<String, MemberVO>();
		map.put("member", member);
		return new ModelAndView("owner/owner_mypage_modify", "map", map);
	}
	
	// 점주 회원 정보 수정
	@PostMapping(value = "/ownerModifyPro.me")
	public String ownerModifyPro(MemberVO member, @RequestParam String newPasswd, @RequestParam String newPasswd2, HttpSession session, Model model) {
		String id = (String)session.getAttribute("sId");
		BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
		String passwd = ownerService.getPasswd(id);
		if(passwd == null || !passwordEncoder.matches(member.getMember_passwd(), passwd)) {	// 패스워드가 null이거나 일치하지 않으면 수정권한 없음
			model.addAttribute("msg", "기존 비밀번호를 확인해주세요!");
			return "fail_back";
		}
		if(newPasswd.equals(newPasswd2)) {	// 새 패스워드와 새 패스워드 확인이 동일할때
			newPasswd = passwordEncoder.encode(newPasswd);
			int modifyCnt = ownerService.modifyMember(id, member, newPasswd);
				if(modifyCnt > 0) {	// 점주회원정보 수정 성공 
					return "redirect:/ownerModify.me";	
				} else {			// 점주회원정보 수정 실패
					model.addAttribute("msg", "회원 정보 수정 실패!");
					return "fail_back";
				}
		} else {
			model.addAttribute("msg", "변경할 비밀번호가 동일하지 않습니다!");
			return "fail_back";
		}
	}
	
	
	
	// 점주 가게정보 수정페이지로 이동
	@GetMapping(value = "/storeModify.me")
	public String storeModify() {
		return "owner/owner_store_modify";
	}
	
	// 점주 마이페이지에 있는 '새로운 식당 추가' 링크 클릭 시 식당 등록 페이지로 이동
	@GetMapping(value = "/storeRegister.me")
	public String storeRegister() {
		return "owner/owner_store_register";
	}
}
