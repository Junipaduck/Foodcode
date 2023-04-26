package com.itwillbs.foodcode.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.itwillbs.foodcode.service.AdminService;
import com.itwillbs.foodcode.service.MailSendService;
import com.itwillbs.foodcode.service.NoticeService;
import com.itwillbs.foodcode.service.ReportService;
import com.itwillbs.foodcode.vo.*;

@Controller
public class AdminController {
	
	 @Autowired
	 private AdminService adminService;
	 
	 @Autowired
	 private NoticeService noticeService;
	 
	 @Autowired
	 private MailSendService mailService;
	 
	 @Autowired
	 private ReportService reportService ;
	 
	
	@RequestMapping(value = "adminMain", method = {RequestMethod.GET, RequestMethod.POST})
	public String adminMain(Model model) {

//		=====================메인 화면에서 띄울 리스트 객체============================
		
		List<MemberVO> memberList = adminService.getMemberList();
		model.addAttribute("memberList", memberList);
		
		List<OwnerVO> ownerList = adminService.getOwnerList();
		model.addAttribute("ownerList", ownerList);
	
		List<StoreVO> storeList = adminService.getStoreList();
		model.addAttribute("storeList", storeList);
		
		List<NoticeVO> noticeList = noticeService.getNoticeList();
		model.addAttribute("noticeList", noticeList);
		
		List reportList = reportService.getNoticeList();
		model.addAttribute("reportList", reportList);
		
//		====================각 항목 카운트 값 가져오기
		
		String memberCount = adminService.getMemberCount();
		model.addAttribute("memberCount", memberCount);
		
		String ownerCount = adminService.getOwnerCount();
		model.addAttribute("ownerCount", ownerCount);
		
		String storeCount = adminService.getStoreCount();
		model.addAttribute("storeCount", storeCount);
		
		String noticeCount = adminService.getNoticeCount();
		model.addAttribute("noticeCount", noticeCount);
		
		String reportCount = adminService.getReportCount();
		model.addAttribute("reportCount", reportCount);
		
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
	
// ============== 각 항목 리스트===========================	
	
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
	public String storeManagement(Model model) {
		
		List aList = adminService.getStoreList2();
		model.addAttribute("aList", aList);
		
		return "/admin/store_management";
	}
	
	@GetMapping(value = "adminStore_managementDelete")
	public String storeManagementDelete() {
		
		
		return "/admin/store_delete";
	}
	
	@RequestMapping(value = "adminStoreManagementDeletePro", method = {RequestMethod.GET, RequestMethod.POST})
	public String storeManagementD(@RequestParam String store_license,
			@RequestParam String owner_id, Model model, HttpSession session) {
		
		String id = (String)session.getAttribute("sId");
		
		if(!id.equals("admin")) {
			model.addAttribute("msg", "잘못된 접근입니다!");
			return "fail_back";
		}
		
		int isDeleteSuccess = adminService.managementDelete(store_license, owner_id);
		
		if(isDeleteSuccess>0) {
			return "redirect:/adminStore_management";
		} else {
			model.addAttribute("msg", "사업자 번호를 다시 확인해주세요!");
			return "admin/fail_back";
		}
	}
	
// 	=====================식당 승인 페이지 ==========================		
	
	@GetMapping(value = "adminStore_approve")
	public String storeApprove(Model model) {
		
		List aList = adminService.getNoApprove();
		model.addAttribute("aList", aList);
		
		return "/admin/store_approve";
	}
	
	@GetMapping(value = "adminStoreManagementApprovePro")
	public String storeApprovePro(@RequestParam String store_license, Model model, HttpSession session) {
		
		String id = (String)session.getAttribute("sId");
		
		if(!id.equals("admin")) {
			model.addAttribute("msg", "잘못된 접근입니다!");
			return "fail_back";
		}
		
		int isDeleteSuccess = adminService.StoreApprove(store_license);
		
		if(isDeleteSuccess>0) {
			return "redirect:/adminStore_approve";
		} else {
			model.addAttribute("msg", "승인 실패 ! 다시 확인해주세요!");
			return "admin/fail_back";
		}
	}
	
// ================(일반, 맴버) 회원 삭제======================	

	
	@GetMapping(value = "adminMember_delete")
	public String customerDelect() {
		
		return "/admin/member_delete";
	}
	
	@RequestMapping(value = "adminMemberDeletePro", method = {RequestMethod.GET, RequestMethod.POST})
	public String customerDelectPro(@RequestParam String member_idx, 
			@RequestParam String member_id, @RequestParam String member_type, Model model, HttpSession session) {
		String id = (String)session.getAttribute("sId");
		
		if(!id.equals("admin")) {
			model.addAttribute("msg", "잘못된 접근입니다!");
			return "fail_back";
		}
		System.out.println("지울 항목 !!!!=" + member_idx + member_id + member_type);
		int isDeleteSuccess = adminService.MemberDelete(member_idx, member_id, member_type);
		
		if(isDeleteSuccess>0&&member_type.equals("c")) {
			return "redirect:/adminMember_list";
		} else if(isDeleteSuccess>0&&member_type.equals("o")) {
			return "redirect:/adminOwner_list";
		} else {
			model.addAttribute("msg", "아이디를 다시 확인해주세요!");
			return "admin/fail_back";
		}
	}
	
	// ================메일 보내기======================	

	@GetMapping("/mailCheck")
	@ResponseBody
	public String mailCheck(String email, String storeName, String store_idx) {
		System.out.println("이메일 인증 요청이 들어옴!");
		System.out.println("이메일 인증 이메일 : " + email + "받는 사람:" + storeName);
		
		System.out.println("메일 출력시 메일 체크 --------------- :" + store_idx);
		adminService.deleteReportCount(store_idx);
		
		if(storeName==null || storeName.equals("")) {
		return mailService.joinEmail(email); //회원가입시 랜덤 코드 발송 메일
		}
		return mailService.storeEmail(email, storeName); //식당 경고 메세지 발송 메일
	}
	
	
	// ================신고 리스트======================
	@GetMapping(value = "reportList")
	public String reportList(Model model) {
		
		List reportList = reportService.getNoticeList();
		model.addAttribute("reportList", reportList);
		
		return "/admin/admin_report_list";
	}
	
}
