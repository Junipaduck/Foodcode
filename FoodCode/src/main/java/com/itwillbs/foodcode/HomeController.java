package com.itwillbs.foodcode;

import java.text.DateFormat;
import java.util.*;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.*;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.*;

import com.itwillbs.foodcode.service.*;
import com.itwillbs.foodcode.vo.*;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	@Autowired
	private StoreService storeService;
	@Autowired
    private KaKaoService ks;
	@Autowired
	private ReviewService reviewService;
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	 
	/**
	 * Simply selects the home view to render by returning its name.
	 */
//	@RequestMapping(value = "/", method = RequestMethod.GET)
//	public String home(Locale locale, Model model) {
//		logger.info("Welcome home! The client locale is {}.", locale);
//		
//		Date date = new Date();
//		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
//		
//		String formattedDate = dateFormat.format(date);
//		
//		model.addAttribute("serverTime", formattedDate );
//		
//		return "index";
//	}
	@RequestMapping(value = "/", method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView index(StoreVO store, Model model) {
		
		// 메인 페이지에서 맛집 추천을 위한 store 조회 코드 
		List<StoreVO> storeList = storeService.selectStoreList(store);
		model.addAttribute("storeList", storeList);
		
		// 예약건수차트
		List<StoreVO> bookingChart = storeService.bookingChart(store); 
		model.addAttribute("bookingChart", bookingChart);
		System.out.println("예약건수차트 값 : " + bookingChart);
		
		Map<String, Object> map = new HashMap<>();
		map.put("bookingChart", bookingChart);
		
		// 누적 리뷰 수 차트 
		List<ReviewVO> reviewChart = reviewService.reviewChart(store);
		model.addAttribute("reviewChart", reviewChart);
		map.put("reviewChart", reviewChart);
//		System.out.println("리뷰차트확인" + reviewChart);
		
		return new ModelAndView("index","map",map);
		
//		return "index";
	}
	
	
	
	
}
