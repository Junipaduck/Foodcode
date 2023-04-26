package com.itwillbs.foodcode.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

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
	
}
