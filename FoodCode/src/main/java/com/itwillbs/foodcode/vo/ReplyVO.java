package com.itwillbs.foodcode.vo;

import java.sql.*;

public class ReplyVO {
	private int reply_idx;
	private int review_idx;
	private String reply_content;
	private Date reply_date;
	
	public ReplyVO() {
		// TODO Auto-generated constructor stub
	}

	public ReplyVO(int reply_idx, int review_idx, String reply_content, Date reply_date) {
		super();
		this.reply_idx = reply_idx;
		this.review_idx = review_idx;
		this.reply_content = reply_content;
		this.reply_date = reply_date;
	}

	public int getReply_idx() {
		return reply_idx;
	}

	public void setReply_idx(int reply_idx) {
		this.reply_idx = reply_idx;
	}

	public int getReview_idx() {
		return review_idx;
	}

	public void setReview_idx(int review_idx) {
		this.review_idx = review_idx;
	}

	public String getReply_content() {
		return reply_content;
	}

	public void setReply_content(String reply_content) {
		this.reply_content = reply_content;
	}

	public Date getReply_date() {
		return reply_date;
	}

	public void setReply_date(Date reply_date) {
		this.reply_date = reply_date;
	}

	@Override
	public String toString() {
		return "ReplyVO [reply_idx=" + reply_idx + ", review_idx=" + review_idx + ", reply_content=" + reply_content
				+ ", reply_date=" + reply_date + "]";
	}

	
	
}


















































