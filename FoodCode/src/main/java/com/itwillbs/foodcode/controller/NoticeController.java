package com.itwillbs.foodcode.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class NoticeController {
	// 메인페이지에서 [공지사항]버튼 클릭 시 공지사항 목록페이지로 포워딩
	@RequestMapping(value = "notice_list.no", method = {RequestMethod.GET, RequestMethod.POST})
	public String notice() {
		return "notice/notice_list";
	}
	
	// 공지사항 제목 클릭 시 공지사항 상세페이지로 포워딩
	@RequestMapping(value = "notice_view.no", method = {RequestMethod.GET, RequestMethod.POST})
	public String notice_info() {
		return "notice/notice_view";
	}
	
	// 공지사항 notice_write_form.jsp로 포워딩
	@RequestMapping(value = "notice_write_form.no", method = {RequestMethod.GET, RequestMethod.POST})
	public String notice_write_form() {
		return "notice/notice_write_form";
	}
	
	// 공지사항 notice_modify_form.jsp로 포워딩
	@RequestMapping(value = "notice_modify_form.no", method = {RequestMethod.GET, RequestMethod.POST})
	public String notice_modify_form() {
		return "notice/notice_modify_form";
	}
	
	// 공지사항 admin_notice_list.jsp로 포워딩
	@RequestMapping(value = "admin_notice_list.no", method = {RequestMethod.GET, RequestMethod.POST})
	public String admin_notice_list() {
		return "notice/admin_notice_list";
	}
	
	// 공지사항 admin_notice_view.jsp로 포워딩
	@RequestMapping(value = "admin_notice_view.no", method = {RequestMethod.GET, RequestMethod.POST})
	public String admin_notice_view() {
		return "notice/admin_notice_view";
	}
}
