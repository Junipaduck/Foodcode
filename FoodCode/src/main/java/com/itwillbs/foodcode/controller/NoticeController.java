package com.itwillbs.foodcode.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.itwillbs.foodcode.service.NoticeService;
import com.itwillbs.foodcode.vo.NoticeVO;

@Controller
public class NoticeController {
	// DI(의존주입)
	@Autowired
	private NoticeService service;
	
	// 메인페이지에서 [공지사항]버튼 클릭 시 공지사항 목록페이지로 포워딩
	// + 공지사항 리스트 SELECT 작업 
	@RequestMapping(value = "noticeList.no", method = {RequestMethod.GET, RequestMethod.POST})
	public String notice(Model model) {
		System.out.println("noticeList.no");
		List<NoticeVO> noticeList = service.getNoticeList();
//		System.out.println("공지사항 리스트 : " + noticeList);
		model.addAttribute("noticeList", noticeList);
		return "notice/notice_list";
	}
	
	// 공지사항 제목 클릭 시 공지사항 상세페이지로 포워딩
	// + 공지사항 상세페이지에 select 작업
	@RequestMapping(value = "noticeView", method = {RequestMethod.GET, RequestMethod.POST})
	public String notice_view(NoticeVO notice, Model model) {
		System.out.println("noticeView");
		int notice_idx = notice.getNotice_idx();
		notice = service.selectNoticeView(notice_idx);
		model.addAttribute("notice", notice);
		return "notice/notice_view";
	}
	
	// 공지사항 notice_write_form.jsp로 포워딩
	@RequestMapping(value = "noticeWriteForm.no", method = {RequestMethod.GET, RequestMethod.POST})
	public String notice_write_form() {
		return "notice/notice_write_form";
	}
	
	// 공지사항 notice_modify_form.jsp로 포워딩
	@RequestMapping(value = "noticeModifyForm.no", method = {RequestMethod.GET, RequestMethod.POST})
	public String notice_modify_form() {
		return "notice/notice_modify_form";
	}
	
	// 공지사항 수정 작업 (0415 배하나 - 수정중)
//	@GetMapping(value = "/noticeModifyPro.no")
//	public String noticeModify(NoticeVO notice) {
//		int modifyCount = service.noticeModify(notice);
//		return "notice/admin_notice_list"; //=> 공지사항 수정완료 후 공지사항 리스트로 이동
//	}
	
	
	// 공지사항 admin_notice_list.jsp로 포워딩
	// + 공지사항 리스트 SELECT 작업 
	@RequestMapping(value = "adminNoticeList.no", method = {RequestMethod.GET, RequestMethod.POST})
	public String admin_notice_list(Model model) {
		System.out.println("adminNoticeList.no");
		List<NoticeVO> noticeList = service.getNoticeList();
//		System.out.println("공지사항 리스트(admin) : " + noticeList);
		model.addAttribute("noticeList", noticeList);
		return "notice/admin_notice_list";
	}
	
	// 공지사항 admin_notice_view.jsp로 포워딩
	// + 공지사항 상세페이지에 select 작업
	@RequestMapping(value = "adminNoticeView", method = {RequestMethod.GET, RequestMethod.POST})
	public String admin_notice_view(NoticeVO notice, Model model) {
		System.out.println("adminNoticeView");
		int notice_idx = notice.getNotice_idx();
		notice = service.selectNoticeView(notice_idx);
		model.addAttribute("notice", notice);
		return "notice/admin_notice_view";
	}
	
	// admin_notice_list.jsp 에서 [등록하기]버튼 클릭 시 notice_write_form.jsp로 포워딩
	@RequestMapping(value = "adminNoticeWrite.no", method = {RequestMethod.GET, RequestMethod.POST})
	public String adminNoticeWrite() {
		return "notice/notice_write_form";
	}
	
	// 공지사항 글쓰기 Pro작업
	@PostMapping(value = "/noticeWritePro.no")
	public String noticeWrite(NoticeVO notice) {
		System.out.println("noticeWritePro.no");
		int insertCount = service.registNotice(notice);
		System.out.println(notice);
		
		return "redirect:/adminNoticeList.no"; //=> 글쓰기작업완료 후 공지사항 리스트로 이동
	
	}
	
	

	
	
	
	
	
	
	
	
	
	
	
} //클래스 끝
