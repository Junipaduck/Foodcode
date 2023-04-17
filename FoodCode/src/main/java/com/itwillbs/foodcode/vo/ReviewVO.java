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
	
	// 파일 업로드 처리를 위한 MultipartFile 타입 변수 선언  
	private MultipartFile file;
	
	public ReviewVO() {
		// TODO Auto-generated constructor stub
	}

	public ReviewVO(int review_idx, String review_content, int review_star, Date review_date, int review_re_ref,
			int review_re_lev, int review_re_seq, int store_idx, String member_id, String review_file,
			String review_file_path, MultipartFile file) {
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
				+ member_id + ", review_file=" + review_file + ", review_file_path=" + review_file_path + ", file="
				+ file + "]";
	}
	
	
	
	
}




















































