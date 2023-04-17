package com.itwillbs.foodcode.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.itwillbs.foodcode.service.BookingService;
import com.itwillbs.foodcode.service.CustomerService;
import com.itwillbs.foodcode.service.StoreService;
import com.itwillbs.foodcode.vo.BookingVO;
import com.itwillbs.foodcode.vo.MemberVO;
import com.itwillbs.foodcode.vo.StoreVO;

@Controller
public class BookingController {

	@Autowired
	private BookingService bookingService;
	
	@Autowired
    private CustomerService customerService;
	
	@Autowired
	private StoreService storeService;
	
	
	//가게 상세 페이지에서 예약페이지로 넘어오는 매핑
	@GetMapping(value = "/booking.bo")
	public ModelAndView booking(HttpSession session, Model model, StoreVO store, int store_idx) {
		System.out.println("booking");
		String id = (String)session.getAttribute("sId");
		MemberVO member = customerService.selectMember(id);
		
		List<StoreVO> storeInfo = storeService.selectStoreInfo(store, store_idx); 
		
		Map<String, Object> map = new HashMap<>();
		System.out.println(member);
		System.out.println(storeInfo);
		//
		map.put("member", member);
		map.put("storeInfo", storeInfo);
		
		return new ModelAndView("booking/booking","map",map);
	}
	
	// 예약하기 완료버튼 누른 매핑
	@PostMapping(value = "reservation.bo")
	 public String reservation(HttpSession session, Model model, StoreVO store, BookingVO booking, @RequestParam int store_idx) {
		//세션아이디 가져와서 로그인한 아이디를 컬럼에 저장시켜줌
		System.out.println("reservation");
		String id = (String)session.getAttribute("sId").toString();
		booking.setMember_id(id);
		booking.setStore_idx(store_idx);
		System.out.println("스토어인덱스 " + store_idx);
		
		int insertBooking = bookingService.insertBooking(booking); 
		System.out.println(booking);
		
		if(id == null) {
			model.addAttribute("msg", "로그인 후 이용해주세요");
			return "fail_back";
		} else {
			if(insertBooking > 0) {
				return "redirect:/customerBooking.me";
			} else {
				model.addAttribute("msg", "예약을 다시 확인해주세요");
				return "fail_back";
			}
		} 
		
		
	}
	
}
