package com.itwillbs.foodcode.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.itwillbs.foodcode.vo.BookingVO;

public interface BookingMapper {

	int insertBooking(BookingVO booking);

	List bookingList(@Param("id") String id, @Param("booking_idx") int booking_idx);
	
}
