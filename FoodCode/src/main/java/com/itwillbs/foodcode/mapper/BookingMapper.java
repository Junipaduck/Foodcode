package com.itwillbs.foodcode.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.itwillbs.foodcode.vo.BookingVO;

public interface BookingMapper {

	int insertBooking(BookingVO booking);
	
	//예약 내역 확인 
	List bookingList(@Param("id") String id, @Param("merchant_uid") String merchant_uid);

	String selectMerchantUid(int booking_idx);
//	String selectMerchantUid(int booking_idx);
	
	// pay테이블 insert
	void insertPayList(@Param("id") String id, @Param("merchant_uid") String merchant_uid, @Param("pay_price") String pay_price);

	int bookingSeatCheck(@Param("store_idx") int store_idx, @Param("booking_date") String booking_date, @Param("booking_time") String booking_time);

	int getStore_maxps(int store_idx);

	
}
