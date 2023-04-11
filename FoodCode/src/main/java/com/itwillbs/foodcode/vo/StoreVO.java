package com.itwillbs.foodcode.vo;

public class StoreVO {
	private Integer store_idx;
	private String store_name;
	private String store_phone;
	private String store_address;
	private String store_type;
	private String store_content;
	private String store_time;
	private String store_license;
	private String store_date;
	private	Integer owner_idx;
	private String store_etc;
	private String owner_id;


	public StoreVO(Integer store_idx, String store_name, String store_phone, String store_address, String store_type,
			String store_content, String store_time, String store_license, String store_date, Integer owner_idx,
			String store_etc, String owner_id) {
		super();
		this.store_idx = store_idx;
		this.store_name = store_name;
		this.store_phone = store_phone;
		this.store_address = store_address;
		this.store_type = store_type;
		this.store_content = store_content;
		this.store_time = store_time;
		this.store_license = store_license;
		this.store_date = store_date;
		this.owner_idx = owner_idx;
		this.store_etc = store_etc;
		this.owner_id = owner_id;
	}
	
	

	public Integer getStore_idx() {
		return store_idx;
	}
	public void setStore_idx(Integer store_idx) {
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
	public Integer getOwner_idx() {
		return owner_idx;
	}
	public void setOwner_idx(Integer owner_idx) {
		this.owner_idx = owner_idx;
	}
	public String getStore_etc() {
		return store_etc;
	}
	public void setStore_etc(String store_etc) {
		this.store_etc = store_etc;
	}
	public String getOwner_id() {
		return owner_id;
	}

	public void setOwner_id(String owner_id) {
		this.owner_id = owner_id;
	}



	@Override
	public String toString() {
		return "StoreVO [store_idx=" + store_idx + ", store_name=" + store_name + ", store_phone=" + store_phone
				+ ", store_address=" + store_address + ", store_type=" + store_type + ", store_content=" + store_content
				+ ", store_time=" + store_time + ", store_license=" + store_license + ", store_date=" + store_date
				+ ", owner_idx=" + owner_idx + ", store_etc=" + store_etc + ", owner_id=" + owner_id + "]";
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
