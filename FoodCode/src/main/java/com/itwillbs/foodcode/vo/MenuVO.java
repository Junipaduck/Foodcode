package com.itwillbs.foodcode.vo;

import org.springframework.web.multipart.*;

public class MenuVO {

	private String menu_idx;
	private String menu_name;
	private String menu_type;
	private String menu_price;
	private String menu_image;
	private String menu_image_path;
	private String menu_content;
	private MultipartFile flie;
	
	
	
	public String getMenu_idx() {
		return menu_idx;
	}
	public void setMenu_idx(String menu_idx) {
		this.menu_idx = menu_idx;
	}
	public String getMenu_name() {
		return menu_name;
	}
	public void setMenu_name(String menu_name) {
		this.menu_name = menu_name;
	}
	public String getMenu_type() {
		return menu_type;
	}
	public void setMenu_type(String menu_type) {
		this.menu_type = menu_type;
	}
	public String getMenu_price() {
		return menu_price;
	}
	public void setMenu_price(String menu_price) {
		this.menu_price = menu_price;
	}
	public String getMenu_image() {
		return menu_image;
	}
	public void setMenu_image(String menu_image) {
		this.menu_image = menu_image;
	}
	public String getMenu_image_path() {
		return menu_image_path;
	}
	public void setMenu_image_path(String menu_image_path) {
		this.menu_image_path = menu_image_path;
	}
	public String getMenu_content() {
		return menu_content;
	}
	public void setMenu_content(String menu_content) {
		this.menu_content = menu_content;
	}
	public MultipartFile getFlie() {
		return flie;
	}
	public void setFlie(MultipartFile flie) {
		this.flie = flie;
	}
	public MenuVO(String menu_idx, String menu_name, String menu_type, String menu_price, String menu_image,
			String menu_image_path, String menu_content, MultipartFile flie) {
		super();
		this.menu_idx = menu_idx;
		this.menu_name = menu_name;
		this.menu_type = menu_type;
		this.menu_price = menu_price;
		this.menu_image = menu_image;
		this.menu_image_path = menu_image_path;
		this.menu_content = menu_content;
		this.flie = flie;
	}
	@Override
	public String toString() {
		return "MenuVO [menu_idx=" + menu_idx + ", menu_name=" + menu_name + ", menu_type=" + menu_type
				+ ", menu_price=" + menu_price + ", menu_image=" + menu_image + ", menu_image_path=" + menu_image_path
				+ ", menu_content=" + menu_content + ", flie=" + flie + "]";
	}

	
	
	
	
	
	
	
	
}
