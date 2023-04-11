package com.itwillbs.foodcode.vo;

public class OwnerVO {
	private Integer owner_idx;
	private String owner_id;
	private String owner_passwd;
	private String owner_name;
	private String owner_phone;
	private String owner_email;
	private String owner_join_date;
	
	
	public OwnerVO(Integer owner_idx, String owner_id, String owner_passwd, String owner_name, String owner_phone,
			String owner_email, String owner_join_date) {
		super();
		this.owner_idx = owner_idx;
		this.owner_id = owner_id;
		this.owner_passwd = owner_passwd;
		this.owner_name = owner_name;
		this.owner_phone = owner_phone;
		this.owner_email = owner_email;
		this.owner_join_date = owner_join_date;
	}


	public Integer getOwner_idx() {
		return owner_idx;
	}


	public void setOwner_idx(Integer owner_idx) {
		this.owner_idx = owner_idx;
	}


	public String getOwner_id() {
		return owner_id;
	}


	public void setOwner_id(String owner_id) {
		this.owner_id = owner_id;
	}


	public String getOwner_passwd() {
		return owner_passwd;
	}


	public void setOwner_passwd(String owner_passwd) {
		this.owner_passwd = owner_passwd;
	}


	public String getOwner_name() {
		return owner_name;
	}


	public void setOwner_name(String owner_name) {
		this.owner_name = owner_name;
	}


	public String getOwner_phone() {
		return owner_phone;
	}


	public void setOwner_phone(String owner_phone) {
		this.owner_phone = owner_phone;
	}


	public String getOwner_email() {
		return owner_email;
	}


	public void setOwner_email(String owner_email) {
		this.owner_email = owner_email;
	}


	public String getOwner_join_date() {
		return owner_join_date;
	}


	public void setOwner_join_date(String owner_join_date) {
		this.owner_join_date = owner_join_date;
	}


	@Override
	public String toString() {
		return "OwnerVO [owner_idx=" + owner_idx + ", owner_id=" + owner_id + ", owner_passwd=" + owner_passwd
				+ ", owner_name=" + owner_name + ", owner_phone=" + owner_phone + ", owner_email=" + owner_email
				+ ", owner_join_date=" + owner_join_date + "]";
	}
	
	
	
	
	
}

























































