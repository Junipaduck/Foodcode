package com.itwillbs.foodcode.controller;

import java.util.ArrayList;
import java.util.List;

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
		
		// model 객체에 storeList 저장 
		model.addAttribute("storeList", storeList);
		
		// 가게 상세페이지에 별점 출력을 위해 review 테이블 vo가 필요
		model.addAttribute("reviewList", reviewList);
		
		return "store/store_information";
	}
	
	// 메인페이지에서 [맛집추천]버튼 클릭 시 식당추천페이지로 포워딩 - 4/10 배하나수정 (중복매핑이라 이 주석은 삭제해도됩니다)
//	@RequestMapping(value = "store_recommend.so", method = {RequestMethod.GET, RequestMethod.POST})
//	public String store_recommend() {
//		return "store/store_recommend";
//	}

	
	// 점주가 owner_store_register.jsp폼에서 새로운식당을 등록하는 Pro작업 - 4/9배하나수정
	@GetMapping(value = "/storeRegisterPro.so")
	public String storeRegisterPro(StoreVO store, Model model, HttpSession session, CustomerVO vo) {
		System.out.println("storeRegisterPro");
		System.out.println("테스트1123 : " + store);
		System.out.println("로그인된 id값 : " + session.getAttribute("sId"));
		
		store.setOwner_id(session.getAttribute("sId").toString()); //=> 가게등록을 하려면 owner_id에 맞는 owner_idx가 필요해서 sId 가져옴.
		int insertCnt = storeService.insertStore(store);
		
		  if(insertCnt > 0) {
	            return "redirect:/store_recommend.so";
	      } else {
	            model.addAttribute("msg", "가게 등록 실패!");
	            return "fail_back";
	      }
		  
	}
	
	
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
//		System.out.println("스토어리스트 : " + storeList);
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










