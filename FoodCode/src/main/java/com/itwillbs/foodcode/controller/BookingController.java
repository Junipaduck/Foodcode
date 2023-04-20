package com.itwillbs.foodcode.controller;

import java.lang.ProcessBuilder.Redirect;
import java.util.ArrayList;
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
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

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
	
	//예약하기 누르면 확인페이지
	@GetMapping(value = "bookingCheck.bo")
	public ModelAndView bookingCheck
	(HttpSession session, Model model, StoreVO store, int store_idx, String booking_date, String booking_time, String booking_num, String booking_seat, String booking_content) {
		String id = (String)session.getAttribute("sId");
		MemberVO member = customerService.selectMember(id);
		
//		System.out.println(booking_date.getClass().getName());   // string 타입 오류나서 date의 데이터 타입 확인
		
		List<StoreVO> storeInfo = storeService.selectStoreInfo(store, store_idx);
		
		List<String> bookinginfo = new ArrayList<>();
		bookinginfo.add(booking_date);
		bookinginfo.add(booking_time);
		bookinginfo.add(booking_num);
		bookinginfo.add(booking_seat);
		bookinginfo.add(booking_content);
				
		
		Map<String, Object> map = new HashMap<>();
		map.put("member", member);
		map.put("storeInfo", storeInfo);
		map.put("bookinginfo", bookinginfo);
		
		
		return new ModelAndView("booking/booking_check","map",map);
	}
	
	
	// 결제하기 전 예약 확인 페이지
	@RequestMapping(value = "reservation.bo", method = {RequestMethod.GET, RequestMethod.POST})
	 public String reservation(HttpSession session, Model model, StoreVO store, BookingVO booking, @RequestParam int store_idx, RedirectAttributes re) {
		
		String id = (String)session.getAttribute("sId").toString();
		booking.setMember_id(id);
		booking.setStore_idx(store_idx);
		
		int insertBooking = bookingService.insertBooking(booking); 
		int bookingNum = booking.getBooking_idx();
		int storeNum = booking.getStore_idx();
		re.addAttribute("booking_idx", bookingNum);
		re.addAttribute("store_idx", storeNum);
		
//		if(id == null) {
//			model.addAttribute("msg", "로그인 후 이용해주세요");
//			return "fail_back";
//		} else {
			if(insertBooking > 0) {
				System.out.println("예약번호 : " + bookingNum + "가게번호 : " + storeNum);
			}
			return "redirect:/bookingsuccess.bo";
//			} else {
//				model.addAttribute("msg", "예약을 다시 확인해주세요");
//				return "fail_back";
//			}
//		}
	}

	//결제 끝난 후 보여줄 페이지
	@GetMapping(value = "bookingsuccess.bo")
	public String bookingSuccess(HttpSession session, Model model, @RequestParam(value = "booking_idx", defaultValue = "defalutValue") int booking_idx, @RequestParam(value = "store_idx", defaultValue = "defalutValue") int store_idx) {
		String id = (String)session.getAttribute("sId").toString();
		
		List bookingList = bookingService.bookingList(id, booking_idx);
		model.addAttribute("bookingList", bookingList);
		
		return "booking/booking_success";
	}
	
}
