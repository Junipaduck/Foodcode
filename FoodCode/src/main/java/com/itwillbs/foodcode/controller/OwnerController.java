package com.itwillbs.foodcode.controller;

import java.io.*;
import java.nio.file.*;
import java.text.*;
import java.util.*;

import javax.servlet.http.*;

import org.json.*;
import org.json.simple.JSONObject;
import org.json.simple.parser.*;
import org.json.JSONArray;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.*;
import org.springframework.ui.Model;
import org.springframework.validation.*;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.*;
import org.springframework.web.servlet.*;

import com.itwillbs.foodcode.service.*;
import com.itwillbs.foodcode.vo.*;

@Controller
public class OwnerController {
	
	@Autowired
	private ReviewService reviewService;
	
	@Autowired
	private OwnerService ownerService;
	
	@Autowired
	private StoreService storeService;
	
	@Autowired
	private MemberService memberService;
	
	// 점주 회원가입페이지로 이동
	@GetMapping("/ownerJoin.me")
	public String ownerJoin() {
		return "owner/owner_join_form";
	}
	
	// 좌측 배너에서 "내식당" 버튼 클릭시 마이페이지 이동 - 가게 정보 조회해와야함
	// 후에 점주아이디-가게 연결되면 id값 가져가서 조회해오기
	@GetMapping("/ownerPage.me")
	public String ownerPage(StoreVO store, Model model, HttpSession session) {
		String id = (String)session.getAttribute("sId");
		
		// 점주의 가게 갯수 조회
		int count = ownerService.countStore(id);
		model.addAttribute("count", count);
		
		List<StoreVO> storeInfo = ownerService.selectStore(id);
//		System.out.println(storeInfo);
		model.addAttribute("storeInfo", storeInfo);
		
//		List<BookingVO> storeBooking = ownerService.showBooking(id);
//		ArrayList<HashMap<String, String>> storeBooking = ownerService.showBooking(id);
//		System.out.println(storeBooking);
//		model.addAttribute("storeBooking", storeBooking);
		
//		Map<String, Object> mav = new HashMap<>();
//		mav.put("stoerInfo", storeInfo);
//		mav.put("storeBooking", storeBooking);
		
		return "owner/owner_mypage";
		
//		return new ModelAndView("owner/owner_mypage", "mav", mav);
	}
	
	// 점주 회원가입
	@PostMapping("/ownerJoinPro.me")
	public String ownerJoinPro(MemberVO member, Model model, @RequestParam String member_passwd2) {
		if(member.getMember_passwd().equals(member_passwd2)) {
			BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
			String securePasswd = passwordEncoder.encode(member.getMember_passwd());
			member.setMember_passwd(securePasswd);
			int insertCnt = ownerService.insertOwner(member);
			if(insertCnt > 0) {
				model.addAttribute("msg", "회원 가입 성공!");
        		model.addAttribute("target","main");
				return "success";
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
	@GetMapping("/ownerReview.me")
	public String ownerReview(ReviewVO review, 
							  Model model,
							  @RequestParam(defaultValue = "") String searchType,
    						  @RequestParam(defaultValue = "") String searchKeyword,
    						  @RequestParam(defaultValue = "1") int pageNum,
    						  HttpSession session
    						 ) {
    	
		
		// 0422 리뷰 리스트 조회 수정 
		String id = (String)session.getAttribute("sId");
		MemberVO member = new MemberVO();
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("sId", id);
		
		
		//페이징 코드 시작 
    	//페이징 처리 - 조회 목록 갯수 조절 시 사용하는 변수 
    	int listLimit = 7;
		int startRow = (pageNum - 1) * listLimit; // 조회 시작 행번호(startRow) 계산 => 0, 10, 20...
//    	List<ReviewVO> reviewList = reviewService.getOwnerReivewList(id);
    	
		List<ReviewVO> reviewList = reviewService.getReviewList(searchType, searchKeyword, startRow, listLimit);

		
		// 1. 전체 게시물 수 조회 
		int listCount = reviewService.getReviewListCount(searchType, searchKeyword);
		
		// 2. 한 페이지에서 표시할 페이지 목록 갯수 설정 
		int pageListLimit = 10; // 페이지 목록 갯수를 10개로 제한

		// 3. 전체 페이지 목록 수 계산 
		int maxPage = listCount / listLimit + (listCount % listLimit > 0 ? 1 : 0);

		// 4. 시작 페이지 번호 계산
		int startPage = (pageNum - 1) / pageListLimit * pageListLimit + 1;

		// 5. 끝 페이지 번호 계산 
		int endPage = startPage + pageListLimit - 1;

		// 끝 페이지 번호가 최대 페이지 번호 보다 클 경우 끝 페이지 번호를 최대 페이지 번호로 교체
		if(endPage > maxPage) {
			endPage = maxPage;
		}
		
		// 페이징 처리를 저장하는 PageInfo 객체 생성 
		PageInfo pageInfo = new PageInfo(listCount, pageListLimit, maxPage, startPage, endPage);
		model.addAttribute("pageInfo", pageInfo);
		
		// 페이징 처리를 저장하는 PageInfo 객체 생성 
		model.addAttribute("reviewList", reviewList);
    	
    	System.out.println("선정 테스트 : " + map.get("sId"));
		
		return "owner/owner_mypage_review";
	}
	
	// 점주 회원 정보 수정 페이지로 이동
	@GetMapping("/ownerModify.me")
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
	@PostMapping("/ownerModifyPro.me")
	public String ownerModifyPro(MemberVO member, @RequestParam String newPasswd, @RequestParam String newPasswd2, HttpSession session, Model model) {
		String id = (String)session.getAttribute("sId");
		BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
		String passwd = ownerService.getPasswd(id);
		if(passwd == null || !passwordEncoder.matches(member.getMember_passwd(), passwd)) {	// 패스워드가 null이거나 일치하지 않으면 수정권한 없음
			model.addAttribute("msg", "기존 비밀번호를 확인해주세요!");
			return "fail_back";
		}
		if(!newPasswd.equals("")) {		// 패스워드 변경 시 
			if(newPasswd.equals(newPasswd2)) {	// 새 패스워드와 새 패스워드 확인이 동일할때
				newPasswd = passwordEncoder.encode(newPasswd);
				int modifyCnt = ownerService.modifyMember(id, member, newPasswd);
					if(modifyCnt > 0) {	// 점주회원정보 수정 성공 
						return "redirect:/ownerModify.me";	
					} else {			// 점주회원정보 수정 실패
						model.addAttribute("msg", "회원 정보 수정 실패!");
						return "fail_back";
					}
			} else {	// 새 패스워드와 새 패스워드 확인이 동일하지 않을 때
				model.addAttribute("msg", "변경할 비밀번호가 동일하지 않습니다!");
				return "fail_back";
			}
		} else {	// 패스워드를 변경하지 않을 때
			newPasswd = passwordEncoder.encode(member.getMember_passwd());
			int modifyCnt = ownerService.modifyMember(id, member, newPasswd);
			if(modifyCnt > 0) {	// 점주회원정보 수정 성공 
				return "redirect:/ownerModify.me";	
			} else {			// 점주회원정보 수정 실패
				model.addAttribute("msg", "회원 정보 수정 실패!");
				return "fail_back";
			}
		}
	}
	
	
	
	// 점주 가게정보 수정페이지로 이동
	@GetMapping("/storeModify.me")
	public String storeModify(@RequestParam int store_idx, HttpSession session, Model model) {
		String id = (String)session.getAttribute("sId");
		if(id == null) {
			model.addAttribute("msg", "잘못된 접근입니다");
			return "fail_back";
		}
		
		
		StoreVO store = ownerService.getStore(store_idx);
		model.addAttribute("store", store);
		
//		Map<String, StoreVO> map = new HashMap<String, StoreVO>();
//		map.put("store", store);
		
		return "owner/owner_store_modify";
	}
	
	@PostMapping("/StoreDeleteFile.bo")
	public void storeDeleteFile(@RequestParam int store_idx, 
			@RequestParam String store_file, 
			@RequestParam String store_file_path, 
			HttpServletResponse response,
			HttpSession session) {
		System.out.println(store_file_path);
		try {
			response.setCharacterEncoding("UTF-8");

			int deleteCount = ownerService.removeStoreFile(store_idx);
			if(deleteCount > 0) {
				String uploadDir = "/resources/storeFileUpload";		// 프로젝트상의 업로드 경로
				String saveDir = session.getServletContext().getRealPath(uploadDir);	// 실제 업로드 경로
				// 실제 업로드 경로 + 서브 디렉토리명
				saveDir += store_file_path;
				Path path = Paths.get(saveDir + "/" + store_file);
				Files.deleteIfExists(path);
				response.getWriter().print("true");
			} else {
				
				response.getWriter().print("false");
			}
			
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	@PostMapping("/ownerStoreModifyPro.me")
	public String storeModifyPro(StoreVO store, Model model, HttpSession session) {
		
		//---------- 파일 업로드 관련 작업 시작 -----------------------------------------------------------
		String uploadDir = "/resources/storeFileUpload"; //프로젝트상의 가상 업로드 경로
		String saveDir = session.getServletContext().getRealPath(uploadDir); //실제 업로드 경로
		System.out.println("실제 업로드 경로 : " + saveDir);
//				실제 업로드 경로(resources뒤에 띄어쓰기 되어있음) : C:\Users\HANABAE\workspace_sts\.metadata\.plugins\org.eclipse.wst.server.core\tmp1\wtpwebapps\FoodCode\resourcees\ storeFileupload
		try {
			Date date = new Date(); //java.util.Date 클래스 사용하기
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd");
			store.setStore_file_path("/" + sdf.format(date));
			
			saveDir = saveDir + store.getStore_file_path(); //실제 업로드 경로와 서브 디렉토리 경로 결합하여 저장
			
			Path path = Paths.get(saveDir);
			Files.createDirectories(path);
			
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		MultipartFile mFile = store.getFile(); //StoreVO 객체에 전달된 MultipartFile 단일파일 꺼내기
		String originalFileName = mFile.getOriginalFilename();
		
		String uuid = UUID.randomUUID().toString(); //파일명 중복 방지를 위한 코드
		System.out.println("UUID : " + uuid);
		
		store.setStore_file(uuid.substring(0, 8) + "_" + originalFileName);
		System.out.println("실제 업로드 될 파일명 : " + store.getStore_file());
		//---------- 파일 업로드 관련 작업 끝 ------------------------------------------------------------
		int modifyStoreCnt = ownerService.modifyStore(store);
		if(modifyStoreCnt > 0) {
			return "redirect:/ownerPage.me";
		} else {			
			model.addAttribute("msg", "가게 정보 수정 실패!");
			return "fail_back";
		}
	}
	
	// 점주 마이페이지 선택한 날짜에 해당하는 예약 조회
	@ResponseBody
	@GetMapping("/getTodayBooking.me")
	public String getTodayBooking(@RequestParam String clickedDay, Model model, HttpSession session) {
		System.out.println(clickedDay);
		String id = (String)session.getAttribute("sId");
		System.out.println(id);
		List<HashMap<String, String>> storeBooking = ownerService.showBooking(id, clickedDay);
//		ArrayList<HashMap<String, String>> storeBooking = ownerService.showBooking(id);
//		System.out.println(storeBooking);
//		model.addAttribute("storeBooking", storeBooking);
		
//		if(storeBooking != null) {
//			return "true";
//		} else {
//			return "false";
//		}
		JSONArray jsonArr = new JSONArray(storeBooking);
			
		return jsonArr.toString();
		
	}
	
	// 점주 마이페이지에 있는 '새로운 식당 추가' 링크 클릭 시 식당 등록 페이지로 이동
	@GetMapping("/storeRegister.me")
	public String storeRegister() {
		return "owner/owner_store_register";
	}
	
	
	// 로그인 시 top.jsp에서 점주회원인지 판별
	@ResponseBody
	@GetMapping("/selectId.me")
	public String selectId(HttpSession session, Model model) {
		String id = (String)session.getAttribute("sId");
		List<HashMap<String, String>> member = ownerService.getMemberInfo(id);
		JSONArray idArr = new JSONArray(member);
		System.out.println(idArr);
		
		return idArr.toString();
	}
	
	// 점주 가게 수정 페이지에서 가게 삭제 요청
	@GetMapping("/ownerStoreDelete.me")
	public String ownerStoreDelete(StoreVO store, Model model) {
		int deleteCount = ownerService.deleteOwnerStore(store);
		if(deleteCount > 0) {
			model.addAttribute("msg", "가게 삭제 성공");
			model.addAttribute("target", "ownerPage.me");
			return "success";
		} else {			
			model.addAttribute("msg", "가게 삭제 실패");
			return "fail_back";
		}
	}
	
	
}
