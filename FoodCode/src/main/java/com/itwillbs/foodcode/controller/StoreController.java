package com.itwillbs.foodcode.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.itwillbs.foodcode.service.CustomerService;
import com.itwillbs.foodcode.service.MenuService;
import com.itwillbs.foodcode.service.StoreService;
import com.itwillbs.foodcode.vo.MenuVO;
import com.itwillbs.foodcode.vo.StoreVO;

@Controller
public class StoreController {
	
	 @Autowired
	 private StoreService storeService;
	 
	 @Autowired
	 private MenuService menuService;
	
	@RequestMapping(value = "store.so", method = {RequestMethod.GET, RequestMethod.POST})
	public String store() {
		return "store/store_information";
	}
	
	// 메인페이지에서 [맛집추천]버튼 클릭 시 식당추천페이지로 포워딩
	@RequestMapping(value = "store_recommend.so", method = {RequestMethod.GET, RequestMethod.POST})
	public String store_recommend() {
		return "store/store_recommend";
	}

	// 점주가 owner_store_register.jsp폼에서 새로운식당을 등록하는 Pro작업
	@GetMapping(value = "storeRegisterPro.so")
	public String storeRegisterPro(StoreVO store, Model model) {
		System.out.println("storeRegisterPro");
		int insertCnt = storeService.insertStore(store);
		
		  if(insertCnt > 0) {
	            return "redirect:/main";
	      } else {
	            model.addAttribute("msg", "가게 등록 실패!");
	            return "fail_back";
	      }
		  
	}
	
	//메뉴 등록 페이지(새창으로 띄움)
	@RequestMapping(value = "store_menu.so", method = {RequestMethod.GET, RequestMethod.POST})
	public String storeMenu() {
		System.out.println("store_menu.so");
		return "owner/owner_store_menu";
	}
	
	
	//메뉴 등록 페이지에서 메뉴를 등록하는 Pro 작업 - 여러번 반복해야 할 수 있기 때문에 창 닫으면 안됨

	@GetMapping(value = "store_menuPro.so")
	public String storeMenuPro(MenuVO menu, Model model) {
		System.out.println("storeMenuPro.so");
		int insertCnt = menuService.insertMenu(menu);
		
		if(insertCnt > 0) {
			model.addAttribute("msg", "메뉴를 등록했습니다");
			model.addAttribute("url", "store_menu.so");
			return "owner/fail_backMenu";
		} else {
			model.addAttribute("msg", "메뉴 등록 실패 양식을 확인 해주세요");
			model.addAttribute("url", "store_menu.so");
			return "owner/fail_backMenu";
		}
		
		
	}
	
	
	
	
	
}










