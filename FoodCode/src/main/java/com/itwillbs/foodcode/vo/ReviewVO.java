package com.itwillbs.foodcode.vo;

import java.sql.*;

import org.springframework.web.multipart.*;

public class ReviewVO {
	private int review_idx;
	private String review_content;
	private int review_star;
	private Date review_date;
	private int review_re_ref;
	private int review_re_lev;
	private int review_re_seq;
	private int store_idx;
	private String member_id;
	private String review_file;
	private String review_file_path; // 파일 업로드 경로 
	private String store_name; // 임시추가
	private String member_type; // 점주회원 개인회원 구분을 위해 추가 
	private String merchant_uid;
	private String delete_auth_status; // 점주 회원 리뷰 삭제 - 리뷰 작성 시 항상 'N'으로 insert되며, 삭제 신청 시 'Y'로 변경 
	private int review_count; // 메인화면 차트를 위한 변수
	private int booking_idx; // 리뷰 작성 예약번호
	
	// 파일 업로드 처리를 위한 MultipartFile 타입 변수 선언  
	private MultipartFile file;
	
	public ReviewVO() {
		// TODO Auto-generated constructor stub
	}

	public ReviewVO(int review_idx, String review_content, int review_star, Date review_date, int review_re_ref,
			int review_re_lev, int review_re_seq, int store_idx, String member_id, String review_file,
			String review_file_path, String store_name, String member_type, String merchant_uid,
			String delete_auth_status, int review_count, int booking_idx, MultipartFile file) {
		super();
		this.review_idx = review_idx;
		this.review_content = review_content;
		this.review_star = review_star;
		this.review_date = review_date;
		this.review_re_ref = review_re_ref;
		this.review_re_lev = review_re_lev;
		this.review_re_seq = review_re_seq;
		this.store_idx = store_idx;
		this.member_id = member_id;
		this.review_file = review_file;
		this.review_file_path = review_file_path;
		this.store_name = store_name;
		this.member_type = member_type;
		this.merchant_uid = merchant_uid;
		this.delete_auth_status = delete_auth_status;
		this.review_count = review_count;
		this.booking_idx = booking_idx;
		this.file = file;
	}

	public int getReview_idx() {
		return review_idx;
	}

	public void setReview_idx(int review_idx) {
		this.review_idx = review_idx;
	}

	public String getReview_content() {
		return review_content;
	}

	public void setReview_content(String review_content) {
		this.review_content = review_content;
	}

	public int getReview_star() {
		return review_star;
	}

	public void setReview_star(int review_star) {
		this.review_star = review_star;
	}

	public Date getReview_date() {
		return review_date;
	}

	public void setReview_date(Date review_date) {
		this.review_date = review_date;
	}

	public int getReview_re_ref() {
		return review_re_ref;
	}

	public void setReview_re_ref(int review_re_ref) {
		this.review_re_ref = review_re_ref;
	}

	public int getReview_re_lev() {
		return review_re_lev;
	}

	public void setReview_re_lev(int review_re_lev) {
		this.review_re_lev = review_re_lev;
	}

	public int getReview_re_seq() {
		return review_re_seq;
	}

	public void setReview_re_seq(int review_re_seq) {
		this.review_re_seq = review_re_seq;
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

	public String getReview_file() {
		return review_file;
	}

	public void setReview_file(String review_file) {
		this.review_file = review_file;
	}

	public String getReview_file_path() {
		return review_file_path;
	}

	public void setReview_file_path(String review_file_path) {
		this.review_file_path = review_file_path;
	}

	public String getStore_name() {
		return store_name;
	}

	public void setStore_name(String store_name) {
		this.store_name = store_name;
	}

	public String getMember_type() {
		return member_type;
	}

	public void setMember_type(String member_type) {
		this.member_type = member_type;
	}

	public String getMerchant_uid() {
		return merchant_uid;
	}

	public void setMerchant_uid(String merchant_uid) {
		this.merchant_uid = merchant_uid;
	}

	public String getDelete_auth_status() {
		return delete_auth_status;
	}

	public void setDelete_auth_status(String delete_auth_status) {
		this.delete_auth_status = delete_auth_status;
	}

	public int getReview_count() {
		return review_count;
	}

	public void setReview_count(int review_count) {
		this.review_count = review_count;
	}

	public int getBooking_idx() {
		return booking_idx;
	}

	public void setBooking_idx(int booking_idx) {
		this.booking_idx = booking_idx;
	}

	public MultipartFile getFile() {
		return file;
	}

	public void setFile(MultipartFile file) {
		this.file = file;
	}

	@Override
	public String toString() {
		return "ReviewVO [review_idx=" + review_idx + ", review_content=" + review_content + ", review_star="
				+ review_star + ", review_date=" + review_date + ", review_re_ref=" + review_re_ref + ", review_re_lev="
				+ review_re_lev + ", review_re_seq=" + review_re_seq + ", store_idx=" + store_idx + ", member_id="
				+ member_id + ", review_file=" + review_file + ", review_file_path=" + review_file_path
				+ ", store_name=" + store_name + ", member_type=" + member_type + ", merchant_uid=" + merchant_uid
				+ ", delete_auth_status=" + delete_auth_status + ", review_count=" + review_count + ", booking_idx="
				+ booking_idx + ", file=" + file + "]";
	}


	
}




















































