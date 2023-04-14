package com.itwillbs.foodcode.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.itwillbs.foodcode.service.AdminService;
import com.itwillbs.foodcode.service.CustomerService;
import com.itwillbs.foodcode.vo.*;

@Controller
public class AdminController {
	
	 @Autowired
	 private AdminService adminService;
	
	@RequestMapping(value = "adminMain", method = {RequestMethod.GET, RequestMethod.POST})
	public String adminMain(Model model) {
		
		List<MemberVO> memberList = adminService.getMemberList();
		model.addAttribute("memberList", memberList);
//		
		List<OwnerVO> ownerList = adminService.getOwnerList();
		model.addAttribute("ownerList", ownerList);
//		
		List<StoreVO> storeList = adminService.getStoreList();
		model.addAttribute("storeList", storeList);
		
		return "/admin/admin_main";
	}
	
	
	@GetMapping(value = "adminLogin.me")
	public String adminLogin() {
		
		return "/admin/longin";
	}
	
	@PostMapping(value = "adminLoginPro.me")
	public String adminLoginPro(@RequestParam String id, @RequestParam String passwd , HttpSession session) {
		System.out.println("아이디 : " + id + ", 패스워드 : " + passwd);
		session.setAttribute("sId", id);
		System.out.println(session.getAttribute("sId"));
		return "redirect:/adminMain";
	}
	
	@GetMapping(value = "adminLogout.me")
    public String logout(HttpSession session) {
        session.invalidate();

        return "redirect:/adminMain";
    }
	
	
// ==============리스트===========================	
	
	@GetMapping(value = "adminMember_list")
	public String customerList(Model model) {
		
		List<MemberVO> memberList = adminService.getMemberList();
		
		model.addAttribute("memberList", memberList);
		
		return "/admin/member_list";
	}
	
	@GetMapping(value = "adminOwner_list")
	public String ownerList(Model model) {
		
		List<OwnerVO> ownerList = adminService.getOwnerList();
		
		model.addAttribute("ownerList", ownerList);
		
		return "/admin/owner_list";
	}
	
	@GetMapping(value = "adminStore_list")
	public String storeList(Model model) {
		
		List<StoreVO> storeList = adminService.getStoreList();
		
		model.addAttribute("storeList", storeList);
		
		return "/admin/store_list";
	}
	
// 	=====================식당 관리 페이지 ==========================	
	@GetMapping(value = "adminStore_management")
	public String storeManagement() {
		
		
		
		return "/admin/store_list";
	}
	
// ================일반 회원 삭제======================	

	
	@GetMapping(value = "adminMember_delect")
	public String customerDelect() {
		
		return "/admin/member_delect";
	}
	
	@PostMapping(value = "adminMemberDeletePro")
	public String customerDelectPro(@RequestParam String member_idx, 
			@RequestParam String member_id, Model model, HttpSession session) {
		String id = (String)session.getAttribute("sId");
		if(!id.equals("admin")) {
			model.addAttribute("msg", "잘못된 접근입니다!");
			return "fail_back";
		}
		System.out.println(member_idx + member_id);
		
		int isDeleteSuccess = adminService.MemberDelect(member_idx, member_id);
		
		if(isDeleteSuccess>0) {
			return "redirect:/adminMember_list";
		} else {
			model.addAttribute("msg", "아이디를 다시 확인해주세요!");
			return "admin/fail_back";
		}
	}
	
	
	
}
