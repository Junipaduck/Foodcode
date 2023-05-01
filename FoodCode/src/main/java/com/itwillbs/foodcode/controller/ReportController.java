package com.itwillbs.foodcode.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.itwillbs.foodcode.service.ReportService;
import com.itwillbs.foodcode.vo.ReportVO;

@Controller
public class ReportController {
	 @Autowired
	 private ReportService reportService;
	 
	 
	 // 가게상세페이지에서 신고아이콘 클릭하면 가게신고페이지인 report/storeReport.jsp 페이지로 포워딩
	 @RequestMapping(value = "storeReport.re", method = {RequestMethod.GET, RequestMethod.POST})
	 public String storeReport(HttpSession session, Model model) {
		 if(session.getAttribute("sId") == null) {
				model.addAttribute("msg", "로그인 후 이용해주세요.");
				model.addAttribute("target", "login.me");
				return "success";
			}
		 return "report/storeReport";
	 }
	 
	 // storeReport.jsp에서 신고양식을 작성 후 신고하기 버튼을 클릭 시 '신고가 접수되었습니다.' 알림창 출력 후 메인페이지(index.jsp)로 포워딩
	 @RequestMapping(value = "storeReportPro.re", method = {RequestMethod.GET, RequestMethod.POST})
	 public String storeReportPro(Model model, HttpSession session, ReportVO report, @RequestParam int store_idx) {
		 System.out.println("storeReportPro.re");
		 System.out.println("하나테스트 : " + report.getReport_idx() + report.getReport_content() + report.getStore_idx());
		 int storeReportCount = reportService.insertStoreReport(report);
		 
		 model.addAttribute("msg", "신고가 접수되었습니다.");
		 model.addAttribute("target", "./");
		 return "success";
	 }
}
