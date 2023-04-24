package com.itwillbs.foodcode.vo;

/*
 * create table booking
	(
	booking_idx int,               예약번호                   
	booking_date varchar(50),      예약날짜
	booking_time varchar(45),      예약시간
	booking_num varchar(45),       예약인원
	booking_seat varchar(10),      선호자리
	booking_content varchar(200),  요청사항
	store_idx int,                 예약할 가게 번호
	member_id varchar(45)		   예약할 고객 아이디
	merchant_uid varchar(30));     결제 고유 아이디
 */

public class BookingVO {

	private int booking_idx;
	private String booking_date;
	private String booking_time;
	private String booking_num;
	private String booking_seat;
	private String booking_content;
	private int store_idx;
	private String member_id;
	private String merchant_uid;
	
	public BookingVO(int booking_idx, String booking_date, String booking_time, String booking_num, String booking_seat,
			String booking_content, int store_idx, String member_id, String merchant_uid) {
		super();
		this.booking_idx = booking_idx;
		this.booking_date = booking_date;
		this.booking_time = booking_time;
		this.booking_num = booking_num;
		this.booking_seat = booking_seat;
		this.booking_content = booking_content;
		this.store_idx = store_idx;
		this.member_id = member_id;
		this.merchant_uid = merchant_uid;
	}

	public int getBooking_idx() {
		return booking_idx;
	}

	public void setBooking_idx(int booking_idx) {
		this.booking_idx = booking_idx;
	}

	public String getBooking_date() {
		return booking_date;
	}

	public void setBooking_date(String booking_date) {
		this.booking_date = booking_date;
	}

	public String getBooking_time() {
		return booking_time;
	}

	public void setBooking_time(String booking_time) {
		this.booking_time = booking_time;
	}

	public String getBooking_num() {
		return booking_num;
	}

	public void setBooking_num(String booking_num) {
		this.booking_num = booking_num;
	}

	public String getBooking_seat() {
		return booking_seat;
	}

	public void setBooking_seat(String booking_seat) {
		this.booking_seat = booking_seat;
	}

	public String getBooking_content() {
		return booking_content;
	}

	public void setBooking_content(String booking_content) {
		this.booking_content = booking_content;
	}

	public int getStore_idx() {
		return store_idx;
	}

	public void setStore_idx(int store_idx) {
		this.store_idx = store_idx;
	}

	public String getMember_id() {
		return member_id;
	}

	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}

	public String getMerchant_uid() {
		return merchant_uid;
	}

	public void setMerchant_uid(String merchant_uid) {
		this.merchant_uid = merchant_uid;
	}

	@Override
	public String toString() {
		return "BookingVO [booking_idx=" + booking_idx + ", booking_date=" + booking_date + ", booking_time="
				+ booking_time + ", booking_num=" + booking_num + ", booking_seat=" + booking_seat
				+ ", booking_content=" + booking_content + ", store_idx=" + store_idx + ", member_id=" + member_id
				+ ", merchant_uid=" + merchant_uid + "]";
	} 

}
