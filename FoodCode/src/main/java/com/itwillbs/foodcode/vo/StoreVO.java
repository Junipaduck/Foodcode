package com.itwillbs.foodcode.vo;

import org.springframework.web.multipart.MultipartFile;

public class StoreVO {
	private int store_idx;
	private String store_name;
	private String store_phone;
	private String store_address;
	//도로명주소 + 상세주소 결합 --------
	private String store_address1;
	private String store_address2;
	//도로명주소 + 상세주소 결합---------
	private String store_type;
	private String store_content;
	private String store_time;
	private String store_license;
	private String store_date;
	private String store_etc;
	private String store_file;
	private String store_file_path;
	private String member_id;
	private String auth_status;
	private String review_star; //리뷰별점평균
	private int booking_count; // 차트테스트용
	private String store_open;
	private String store_close;
	private String store_maxps;
	private int report_mail_count;
	
	
	// 파일 업로드 처리를 위한 MultipartFile 타입 변수 선언  
	private MultipartFile file;
	
	public StoreVO() {
		// TODO Auto-generated constructor stub
	}

	public int getStore_idx() {
		return store_idx;
	}

	public void setStore_idx(int store_idx) {
		this.store_idx = store_idx;
	}

	public String getStore_name() {
		return store_name;
	}

	public void setStore_name(String store_name) {
		this.store_name = store_name;
	}

	public String getStore_phone() {
		return store_phone;
	}

	public void setStore_phone(String store_phone) {
		this.store_phone = store_phone;
	}

	public String getStore_address() {
		return store_address;
	}

	public void setStore_address(String store_address) {
		this.store_address = store_address;
	}

	public String getStore_address1() {
		return store_address1;
	}

	public void setStore_address1(String store_address1) {
		this.store_address1 = store_address1;
	}

	public String getStore_address2() {
		return store_address2;
	}

	public void setStore_address2(String store_address2) {
		this.store_address2 = store_address2;
	}

	public String getStore_type() {
		return store_type;
	}

	public void setStore_type(String store_type) {
		this.store_type = store_type;
	}

	public String getStore_content() {
		return store_content;
	}

	public void setStore_content(String store_content) {
		this.store_content = store_content;
	}

	public String getStore_time() {
		return store_time;
	}

	public void setStore_time(String store_time) {
		this.store_time = store_time;
	}

	public String getStore_license() {
		return store_license;
	}

	public void setStore_license(String store_license) {
		this.store_license = store_license;
	}

	public String getStore_date() {
		return store_date;
	}

	public void setStore_date(String store_date) {
		this.store_date = store_date;
	}

	public String getStore_etc() {
		return store_etc;
	}

	public void setStore_etc(String store_etc) {
		this.store_etc = store_etc;
	}

	public String getStore_file() {
		return store_file;
	}

	public void setStore_file(String store_file) {
		this.store_file = store_file;
	}

	public String getStore_file_path() {
		return store_file_path;
	}

	public void setStore_file_path(String store_file_path) {
		this.store_file_path = store_file_path;
	}

	public String getMember_id() {
		return member_id;
	}

	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}

	public String getAuth_status() {
		return auth_status;
	}

	public void setAuth_status(String auth_status) {
		this.auth_status = auth_status;
	}

	public String getReview_star() {
		return review_star;
	}

	public void setReview_star(String review_star) {
		this.review_star = review_star;
	}

	public int getBooking_count() {
		return booking_count;
	}

	public void setBooking_count(int booking_count) {
		this.booking_count = booking_count;
	}

	public String getStore_open() {
		return store_open;
	}

	public void setStore_open(String store_open) {
		this.store_open = store_open;
	}

	public String getStore_close() {
		return store_close;
	}

	public void setStore_close(String store_close) {
		this.store_close = store_close;
	}

	public String getStore_maxps() {
		return store_maxps;
	}

	public void setStore_maxps(String store_maxps) {
		this.store_maxps = store_maxps;
	}

	public MultipartFile getFile() {
		return file;
	}

	public void setFile(MultipartFile file) {
		this.file = file;
	}

	public int getReport_mail_count() {
		return report_mail_count;
	}

	public void setReport_mail_count(int report_mail_count) {
		this.report_mail_count = report_mail_count;
	}

	public StoreVO(int store_idx, String store_name, String store_phone, String store_address, String store_address1,
			String store_address2, String store_type, String store_content, String store_time, String store_license,
			String store_date, String store_etc, String store_file, String store_file_path, String member_id,
			String auth_status, String review_star, int booking_count, String store_open, String store_close,
			String store_maxps, int report_mail_count, MultipartFile file) {
		super();
		this.store_idx = store_idx;
		this.store_name = store_name;
		this.store_phone = store_phone;
		this.store_address = store_address;
		this.store_address1 = store_address1;
		this.store_address2 = store_address2;
		this.store_type = store_type;
		this.store_content = store_content;
		this.store_time = store_time;
		this.store_license = store_license;
		this.store_date = store_date;
		this.store_etc = store_etc;
		this.store_file = store_file;
		this.store_file_path = store_file_path;
		this.member_id = member_id;
		this.auth_status = auth_status;
		this.review_star = review_star;
		this.booking_count = booking_count;
		this.store_open = store_open;
		this.store_close = store_close;
		this.store_maxps = store_maxps;
		this.report_mail_count = report_mail_count;
		this.file = file;
	}

	@Override
	public String toString() {
		return "StoreVO [store_idx=" + store_idx + ", store_name=" + store_name + ", store_phone=" + store_phone
				+ ", store_address=" + store_address + ", store_address1=" + store_address1 + ", store_address2="
				+ store_address2 + ", store_type=" + store_type + ", store_content=" + store_content + ", store_time="
				+ store_time + ", store_license=" + store_license + ", store_date=" + store_date + ", store_etc="
				+ store_etc + ", store_file=" + store_file + ", store_file_path=" + store_file_path + ", member_id="
				+ member_id + ", auth_status=" + auth_status + ", review_star=" + review_star + ", booking_count="
				+ booking_count + ", store_open=" + store_open + ", store_close=" + store_close + ", store_maxps="
				+ store_maxps + ", report_mail_count=" + report_mail_count + ", file=" + file + "]";
	}
	
}
