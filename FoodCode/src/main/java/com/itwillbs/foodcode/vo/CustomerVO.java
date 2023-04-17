package com.itwillbs.foodcode.vo;

import java.util.*;

import org.springframework.format.annotation.*;

public class CustomerVO {
	private int c_idx;
	private String c_id;
	private String c_passwd;
	private String c_name;
	private String c_email;
	private String c_phone;
	private String c_birth;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date c_join_date;
	private String c_gender;
	public int getC_idx() {
		return c_idx;
	}
	public void setC_idx(int c_idx) {
		this.c_idx = c_idx;
	}
	public String getC_id() {
		return c_id;
	}
	public void setC_id(String c_id) {
		this.c_id = c_id;
	}
	public String getC_passwd() {
		return c_passwd;
	}
	public void setC_passwd(String c_passwd) {
		this.c_passwd = c_passwd;
	}
	public String getC_name() {
		return c_name;
	}
	public void setC_name(String c_name) {
		this.c_name = c_name;
	}
	public String getC_email() {
		return c_email;
	}
	public void setC_email(String c_email) {
		this.c_email = c_email;
	}
	public String getC_phone() {
		return c_phone;
	}
	public void setC_phone(String c_phone) {
		this.c_phone = c_phone;
	}
	public String getC_birth() {
		return c_birth;
	}
	public void setC_birth(String c_birth) {
		this.c_birth = c_birth;
	}
	public Date getC_join_date() {
		return c_join_date;
	}
	public void setC_join_date(Date c_join_date) {
		this.c_join_date = c_join_date;
	}
	public String getC_gender() {
		return c_gender;
	}
	public void setC_gender(String c_gender) {
		this.c_gender = c_gender;
	}
	@Override
	public String toString() {
		return "CustomerVO [c_idx=" + c_idx + ", c_id=" + c_id + ", c_passwd=" + c_passwd + ", c_name=" + c_name
				+ ", c_email=" + c_email + ", c_phone=" + c_phone + ", c_birth=" + c_birth + ", c_join_date="
				+ c_join_date + ", c_gender=" + c_gender + "]";
	}
	public CustomerVO(int c_idx, String c_id, String c_passwd, String c_name, String c_email, String c_phone,
			String c_birth, Date c_join_date, String c_gender) {
		super();
		this.c_idx = c_idx;
		this.c_id = c_id;
		this.c_passwd = c_passwd;
		this.c_name = c_name;
		this.c_email = c_email;
		this.c_phone = c_phone;
		this.c_birth = c_birth;
		this.c_join_date = c_join_date;
		this.c_gender = c_gender;
	}
	
	
	
	
	



	
	
	
}
