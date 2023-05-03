package com.itwillbs.foodcode.controller;

import java.lang.ProcessBuilder.Redirect;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springframework.web.servlet.support.RequestContextUtils;

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
		
		if(id == null) { // 세션 아이디가 없을 경우 돌려보내기
			model.addAttribute("msg", "예약하기는 로그인 후 이용하실 수 있습니다.");
			return new ModelAndView("fail_back");
		}
		
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
	
	//예약하기 누르면 확인페이지
	@GetMapping(value = "bookingCheck.bo")
	public String bookingCheck
	(HttpSession session, Model model, StoreVO store, int store_idx, String booking_date, String booking_time, String booking_num, String booking_seat, String booking_content) {
		
		if(booking_date == null || booking_date == "") {
			model.addAttribute("msg", "예약날짜는 필수 입력입니다.");
			return "fail_back";
		} 
		
		if(booking_time == null || booking_time == "") {
			model.addAttribute("msg", "예약시간은 필수 입력입니다.");
			return "fail_back";
		}
		
		String id = (String)session.getAttribute("sId");
		MemberVO member = customerService.selectMember(id);
		
		System.out.println("타임 타입 체크 " + booking_time.getClass().getName());   // string 타입 오류나서 date의 데이터 타입 확인
		
		List<StoreVO> storeInfo = storeService.selectStoreInfo(store, store_idx);
		
		System.out.println("가게정보 출력 : " + storeInfo);
		
		List<String> bookinginfo = new ArrayList<>();
		bookinginfo.add(booking_date);
		bookinginfo.add(booking_time);
		bookinginfo.add(booking_num);
		bookinginfo.add(booking_seat);
		bookinginfo.add(booking_content);
				
		model.addAttribute("member", member);
		model.addAttribute("storeInfo", storeInfo);
		model.addAttribute("bookinginfo", bookinginfo);
		
		return "booking/booking_check";
	}
	
	


	//결제 끝난 후 보여줄 페이지
		@PostMapping(value = "bookingsuccess.bo")
			public String bookingSuccess(HttpSession session, Model model, BookingVO booking, @RequestParam String merchant_uid, @RequestParam String pay_price) {
			String id = (String)session.getAttribute("sId");
			String sId = (String)session.getAttribute("sId");
			MemberVO vo2 = customerService.selectMember(sId);
			
			System.out.println("고유결제번호 " + merchant_uid + " 결제 금액 " + pay_price);
			
			booking.setMember_id(id);
			int insertBooking = bookingService.insertBooking(booking); 
			if(insertBooking > 0) {
				int updatePoint = customerService.updatePoint(sId, vo2);
				bookingService.insertPayList(id, merchant_uid, pay_price);
				
				List bookingList = bookingService.bookingList(id,merchant_uid);
				model.addAttribute("bookingList", bookingList);
				
				return "booking/booking_success";
				
			} else {
				model.addAttribute("msg", "결제에 실패했습니다");
				return "customer/fail_back";
			}
		}
	
		@ResponseBody
		@GetMapping(value = "/bookingSeatCheck.bo")
			public boolean bookingSeatCheck(@RequestParam int store_idx, @RequestParam String booking_date, @RequestParam String booking_time, @RequestParam String booking_num) {
			
			System.out.println("bookingSeatCheck");
			
			int store_maxps = bookingService.getStore_maxps(store_idx);
			
//			System.out.println(store_idx + booking_date + booking_time + store_maxps);
			boolean Check = false;
			 
			int bookingSeatCheckNum = bookingService.bookingSeatCheck(store_idx, booking_date, booking_time) + Integer.parseInt(booking_num);
			
			if(bookingSeatCheckNum > 0) {
				if(store_maxps >= bookingSeatCheckNum) {
					Check = true;
				} else {
					Check = false;
				}
			} else {
				Check = true;
			}
			return Check;
			
		}
		
		
}
