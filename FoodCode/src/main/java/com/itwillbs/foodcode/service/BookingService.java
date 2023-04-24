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
	
}
