package com.itwillbs.foodcode.vo;

import java.util.*;

public class MemberVO {
	private int member_idx;
	private String member_type;
	private String member_name;
	private String member_id;
	private String member_passwd;
	private String member_phone;
	private String member_email;
	private String member_birth;
	private String member_gender;
	private Date member_join_date;
	
	public int getMember_idx() {
		return member_idx;
	}
	public void setMember_idx(int member_idx) {
		this.member_idx = member_idx;
	}
	public String getMember_type() {
		return member_type;
	}
	public void setMember_type(String member_type) {
		this.member_type = member_type;
	}
	public String getMember_name() {
		return member_name;
	}
	public void setMember_name(String member_name) {
		this.member_name = member_name;
	}
	public String getMember_id() {
		return member_id;
	}
	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}
	public String getMember_passwd() {
		return member_passwd;
	}
	public void setMember_passwd(String member_passwd) {
		this.member_passwd = member_passwd;
	}
	public String getMember_phone() {
		return member_phone;
	}
	public void setMember_phone(String member_phone) {
		this.member_phone = member_phone;
	}
	public String getMember_email() {
		return member_email;
	}
	public void setMember_email(String member_email) {
		this.member_email = member_email;
	}
	public String getMember_birth() {
		return member_birth;
	}
	public void setMember_birth(String member_birth) {
		this.member_birth = member_birth;
	}
	public String getMember_gender() {
		return member_gender;
	}
	public void setMember_gender(String member_gender) {
		this.member_gender = member_gender;
	}
	public Date getMember_join_date() {
		return member_join_date;
	}
	public void setMember_join_date(Date member_join_date) {
		this.member_join_date = member_join_date;
	}
	@Override
	public String toString() {
		return "MemberVO [member_idx=" + member_idx + ", member_type=" + member_type + ", member_name=" + member_name
				+ ", member_id=" + member_id + ", member_passwd=" + member_passwd + ", member_phone=" + member_phone
				+ ", member_email=" + member_email + ", member_birth=" + member_birth + ", member_gender="
				+ member_gender + ", member_join_date=" + member_join_date + "]";
	}
	public MemberVO(int member_idx, String member_type, String member_name, String member_id, String member_passwd,
			String member_phone, String member_email, String member_birth, String member_gender,
			Date member_join_date) {
		this.member_idx = member_idx;
		this.member_type = member_type;
		this.member_name = member_name;
		this.member_id = member_id;
		this.member_passwd = member_passwd;
		this.member_phone = member_phone;
		this.member_email = member_email;
		this.member_birth = member_birth;
		this.member_gender = member_gender;
		this.member_join_date = member_join_date;
	}
	
	
	
	
	
	
	



	
	
	
}
