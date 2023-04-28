package com.itwillbs.foodcode.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestParam;

import com.itwillbs.foodcode.mapper.BookingMapper;
import com.itwillbs.foodcode.vo.BookingVO;

@Service
public class BookingService {

	@Autowired
	private BookingMapper mapper;
	
	public int insertBooking(BookingVO booking) {
		return mapper.insertBooking(booking);
	}

	public List bookingList(String id, String merchant_uid) {
		return mapper.bookingList(id, merchant_uid);
	}

	// 리뷰 작성 시 merchant_uid 넘기는 용도
//	public BookingVO getMerchantUid(int booking_idx) {
//		
//		return mapper.selectMerchantUid(booking_idx);
//	}
	
	public String getMerchantUid(int booking_idx) {
		
		return mapper.selectMerchantUid(booking_idx);
	}
	
	public void insertPayList(@RequestParam String id, @RequestParam String merchant_uid, @RequestParam String pay_price) {
		mapper.insertPayList(id, merchant_uid, pay_price);
	}

	public int bookingSeatCheck(int store_idx, String booking_date, String booking_time) {
			
		return mapper.bookingSeatCheck(store_idx, booking_date, booking_time);
	}

	public int getStore_maxps(int store_idx) {
		
		return mapper.getStore_maxps(store_idx);
	}
	
}
