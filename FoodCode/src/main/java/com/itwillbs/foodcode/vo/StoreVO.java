package com.itwillbs.foodcode.vo;

import org.springframework.web.multipart.MultipartFile;

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
	private String store_etc;
	private String store_file;
	private String store_file_path;
	private String member_id;
	
	// 파일 업로드 처리를 위한 MultipartFile 타입 변수 선언  
	private MultipartFile file;
	
	public StoreVO() {}
	
	public StoreVO(Integer store_idx, String store_name, String store_phone, String store_address, String store_type,
			String store_content, String store_time, String store_license, String store_date, String store_etc,
			String store_file, String store_file_path, String member_id, MultipartFile file) {
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
		this.store_etc = store_etc;
		this.store_file = store_file;
		this.store_file_path = store_file_path;
		this.member_id = member_id;
		this.file = file;
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
	
	
	// 파일처리를 위한 MultipartFile
	public MultipartFile getFile() {
		return file;
	}

	public void setFile(MultipartFile file) {
		this.file = file;
	}

	@Override
	public String toString() {
		return "StoreVO [store_idx=" + store_idx + ", store_name=" + store_name + ", store_phone=" + store_phone
				+ ", store_address=" + store_address + ", store_type=" + store_type + ", store_content=" + store_content
				+ ", store_time=" + store_time + ", store_license=" + store_license + ", store_date=" + store_date
				+ ", store_etc=" + store_etc + ", store_file=" + store_file + ", store_file_path=" + store_file_path
				+ ", member_id=" + member_id + ", file=" + file + "]";
	}

	
	


	
	
	

	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
