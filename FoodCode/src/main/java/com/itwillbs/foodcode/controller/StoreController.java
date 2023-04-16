package com.itwillbs.foodcode.controller;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
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
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.itwillbs.foodcode.service.*;
import com.itwillbs.foodcode.vo.*;
import com.mysql.cj.Session;

@Controller
public class StoreController {
	
	 @Autowired
	 private StoreService storeService;
	 
	 @Autowired
	 private MenuService menuService;
	
	 @Autowired
	 private ReviewService reviewService;
	
	@RequestMapping(value = "store.so", method = {RequestMethod.GET, RequestMethod.POST})
	public String store(StoreVO store, Model model, ReviewVO review) {
		
		// 20230412 양선정 - 가게 상세페이지 가게 정보 조회 
		// 가게 상세페이지 클릭 시 바로 가게 정보 출력 가능 - 현재 하드코딩으로 store_idx = 1 인 경우만 출력 
		
		// List 객체에 StoreVO 저장 
		List<StoreVO> storeList = storeService.selectStoreList(store);
		List<ReviewVO> reviewList = reviewService.reviewList(review);
		
		System.out.println("상세페이지의 리뷰리스트 : " + reviewList);
		
		// model 객체에 storeList 저장 
		model.addAttribute("storeList", storeList);
		
		// 가게 상세페이지에 별점 출력을 위해 review 테이블 vo가 필요
		model.addAttribute("reviewList", reviewList);
		
		return "store/store_information";
	}
	

	// 점주가 owner_store_register.jsp폼에서 새로운식당을 등록(가게등록)하는 Pro작업 - 4/9배하나수정
		// 가게등록 폼의 첨부파일 작업 추가 - 4/13 배하나수정
		@PostMapping(value = "/storeRegisterPro.so")
		public String storeRegisterPro(StoreVO store, Model model, HttpSession session) {
			System.out.println("storeRegisterPro");
			System.out.println("테스트1123 : " + store);
			System.out.println("로그인된 id값 : " + session.getAttribute("sId"));
//			System.out.println("업로드 파일명 : " + store.getStore_file().getOriginalFilename());
			
			
			//---------- 파일 업로드 관련 작업 시작 -----------------------------------------------------------
			String uploadDir = "/resources/storeFileUpload"; //프로젝트상의 가상 업로드 경로
			String saveDir = session.getServletContext().getRealPath(uploadDir); //실제 업로드 경로
			System.out.println("실제 업로드 경로 : " + saveDir);
//			실제 업로드 경로(resources뒤에 띄어쓰기 되어있음) : C:\Users\HANABAE\workspace_sts\.metadata\.plugins\org.eclipse.wst.server.core\tmp1\wtpwebapps\FoodCode\resourcees\ storeFileupload
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

			//--------------- 가게 INSERT작업에 관한 코드 시작 ------------------------------------------------
			store.setMember_id(session.getAttribute("sId").toString()); //=> store테이블의 member_id컬럼에 저장할 점주의 sId 가져오기
			int insertCnt = storeService.insertStore(store);
			
			  if(insertCnt > 0) {
				  // 가게등록작업 성공 시 임시 위치에 저장된 파일을 실제 폴더로 옮기는 작업
				  try {
						mFile.transferTo(new File(saveDir, store.getStore_file()));
					} catch (IllegalStateException e) {
						e.printStackTrace();
					} catch (IOException e) {
						e.printStackTrace();
					}
		            return "redirect:/store_recommend.so";
		      } else {
		            model.addAttribute("msg", "가게 등록 실패!");
		            return "fail_back";
		      }
			  
		} //storeRegisterPro() 끝
	
	
	// 가게등록한 정보를 storeList에 담아 맛집추천페이지에 뿌려줌 - 4/10 배하나수정 
	@GetMapping(value = "/store_recommend.so")
	public String storeList(Model model) {
		System.out.println("store_recommend.so");
		List<StoreVO> storeList = storeService.getStoreList();
		List<StoreVO> storeList2 = storeService.getStoreList2();
		List<StoreVO> storeList3 = storeService.getStoreList3();
		List<StoreVO> storeList4 = storeService.getStoreList4();
		List<StoreVO> storeList5 = storeService.getStoreList5();
		List<StoreVO> storeList6 = storeService.getStoreList6();
		System.out.println("스토어리스트 : " + storeList);
		model.addAttribute("storeList", storeList); //=> 한식
		model.addAttribute("storeList2", storeList2); //=> 일식
		model.addAttribute("storeList3", storeList3); //=> 중식
		model.addAttribute("storeList4", storeList4); //=> 양식
		model.addAttribute("storeList5", storeList5); //=> 요리주점
		model.addAttribute("storeList6", storeList6); //=> 카페/디저트
		
		return "store/store_recommend";
		
	}
	
	

	
	
	//메뉴 등록 페이지(새창으로 띄움)
	@RequestMapping(value = "store_menu.so", method = {RequestMethod.GET, RequestMethod.POST})
	public String storeMenu() {
		System.out.println("store_menu.so");
		return "owner/owner_store_menu";
	}
	
	
	//메뉴 등록 페이지에서 메뉴를 등록하는 Pro 작업 - 여러번 반복해야 할 수 있기 때문에 창 닫으면 안됨
	@ResponseBody
	@GetMapping(value = "store_menuPro.so")
	public String storeMenuPro(MenuVO menu, Model model) {
		System.out.println("storeMenuPro.so");
		String message = "";
		int insertCnt = menuService.insertMenu(menu);
		
		if(insertCnt > 0) {
			message = "<script>alert('메뉴 등록 성공');</script>";
		} else {
			message = "<script>alert('메뉴 등록 실패');</script>";
		}
		
		return "message";
	}
	
	
	
	
	
}










