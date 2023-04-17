package com.itwillbs.foodcode.controller;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

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
	public String noticeWrite(NoticeVO notice, HttpSession session) {
		System.out.println("noticeWritePro.no");
		int insertCount = service.registNotice(notice);
		System.out.println(notice);
		
		// 파일 경로 작업 시작 -----------------------------
//        String uploadDir = "/resources/noticeFileUpload"; //프로젝트상의 가상 업로드 경로(근데 깃커밋하면 다른팀원들한테 폴더가 생성이 안됨.. 서버pc필요)
//        String saveDir = session.getServletContext().getRealPath(uploadDir); //실제 업로드 경로
//        System.out.println("실제 업로드 경로 : " + saveDir);
//
//        try {
//            Date date = new Date();
//            SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd");
//            notice.setNotice_file_path("/" + sdf.format(date));
//
//            saveDir = saveDir + notice.getNotice_file_path(); //실제 업로드 경로와 서브 디렉토리 경로 결합하여 저장
//
//            Path path = Paths.get(saveDir);
//
//            Files.createDirectories(path);
//        } catch (IOException e) {
//            e.printStackTrace();
//        }
//
//        MultipartFile mFile = notice.getNotice_file();
//        String originalFileName = mFile.getOriginalFilename();
//
//        String uuid = UUID.randomUUID().toString(); //파일명 중복 방지를 위한 코드
//
//        notice.setNotice_file(uuid.substring(0, 8) + "" + originalFileName);
//        System.out.println("실제 업로드 될 파일명 : " + notice.getNotice_file());




        // 파일 경로 작업 끝 -------------------------------
		
		return "redirect:/adminNoticeList.no"; //=> 글쓰기작업완료 후 공지사항 리스트로 이동
	
	}
	
	
	// 공지사항 notice_modify_form.jsp로 포워딩
	// + 수정 전 파라미터가져와서 수정페이지에 select 하는 작업
	@RequestMapping(value = "noticeModify.no", method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView notice_modify_form(Model model, @RequestParam int notice_idx) {
		NoticeVO notice = service.selectNoticeBeforeModify(notice_idx);
		model.addAttribute("notice", notice);
		
		Map<String, NoticeVO> map = new HashMap<String, NoticeVO>();
		map.put("notice", notice);
//		return "notice/notice_modify_form";
		return new ModelAndView("notice/notice_modify_form", "map", map);
	}
		
	
	// 공지사항 수정 작업
	@PostMapping(value = "/noticeModifyPro.no")
	public String noticeModifyPro(NoticeVO notice, Model model) {
		System.out.println("공지사항 수정 -/noticeModifyPro.no");
		
		model.addAttribute("notice", notice);
		
		int modifyCount = service.noticeModify(notice);

		if(modifyCount > 0) {
			model.addAttribute("msg", "수정 완료!");
			model.addAttribute("target", "adminNoticeView?notice_idx=" + notice.getNotice_idx()); //=> 수정완료 후 notice_idx에 맞는 공지사항상세페이지로 이동
			return "success";
		} else {
			model.addAttribute("msg", "수정 실패!");
			return "fail_back";
		}
		
	}
	
	
	// 공지사항 삭제 작업
	@RequestMapping(value = "/noticeDelete.no", method = {RequestMethod.GET, RequestMethod.POST})
	public String noticeDelete(@RequestParam int notice_idx, Model model) {
		System.out.println("공지사항 삭제 : noticeDelete.no");
		int deleteCount = service.deleteNotice(notice_idx);
		model.addAttribute("notice_idx", notice_idx);

		if(deleteCount > 0) { 
			model.addAttribute("msg", "삭제되었습니다.");
			model.addAttribute("target", "adminNoticeList.no");
    		return "success";
    		// 삭제 했을때도 "삭제가 완료되었습니다." 모달창 띄우고싶다 - 0416배하나 메모
    	} else {
    		model.addAttribute("msg", "삭제 실패!");
    		return "fail_back";
    	}
	}
	
	
	
	
	
	
	
	
} //클래스 끝
