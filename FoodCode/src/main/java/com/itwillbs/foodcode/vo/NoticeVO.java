package com.itwillbs.foodcode.vo;

import java.util.Date;

/*create table notice (
		notice_idx int,
		notice_title varchar(45),
		notice_content varchar(45),
		notice_date date,
		notice_file varchar(200),
		notice_file_path varchar(50)
		
	);*/

public class NoticeVO {
	private int notice_idx;
	private String notice_title;
	private String notice_content;
	private Date notice_date;
	private String notice_file;
	private String notice_file_path;
	
	
	public NoticeVO() {}


	public NoticeVO(int notice_idx, String notice_title, String notice_content, Date notice_date, String notice_file,
			String notice_file_path) {
		super();
		this.notice_idx = notice_idx;
		this.notice_title = notice_title;
		this.notice_content = notice_content;
		this.notice_date = notice_date;
		this.notice_file = notice_file;
		this.notice_file_path = notice_file_path;
	}


	public int getNotice_idx() {
		return notice_idx;
	}


	public void setNotice_idx(int notice_idx) {
		this.notice_idx = notice_idx;
	}


	public String getNotice_title() {
		return notice_title;
	}


	public void setNotice_title(String notice_title) {
		this.notice_title = notice_title;
	}


	public String getNotice_content() {
		return notice_content;
	}


	public void setNotice_content(String notice_content) {
		this.notice_content = notice_content;
	}


	public Date getNotice_date() {
		return notice_date;
	}


	public void setNotice_date(Date notice_date) {
		this.notice_date = notice_date;
	}


	public String getNotice_file() {
		return notice_file;
	}


	public void setNotice_file(String notice_file) {
		this.notice_file = notice_file;
	}


	public String getNotice_file_path() {
		return notice_file_path;
	}


	public void setNotice_file_path(String notice_file_path) {
		this.notice_file_path = notice_file_path;
	}


	@Override
	public String toString() {
		return "NoticeVO [notice_idx=" + notice_idx + ", notice_title=" + notice_title + ", notice_content="
				+ notice_content + ", notice_date=" + notice_date + ", notice_file=" + notice_file
				+ ", notice_file_path=" + notice_file_path + "]";
	}






	

	
	
	
	
}
