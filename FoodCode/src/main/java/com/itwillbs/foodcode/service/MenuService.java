package com.itwillbs.foodcode.service;

import java.util.*;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itwillbs.foodcode.mapper.MenuMapper;
import com.itwillbs.foodcode.mapper.StoreMapper;
import com.itwillbs.foodcode.vo.MenuVO;
import com.itwillbs.foodcode.vo.StoreVO;

@Service
public class MenuService {
	
	@Autowired
	private MenuMapper mapper;

	public int insertMenu(int store_idx, MenuVO menu) {
		return mapper.insertMenu(menu,store_idx);
	}

	public List getMenuList(int store_idx) {
		return mapper.getMenuList(store_idx);
	}

	public int modifyMenu(int store_idx, MenuVO menu) {
		return mapper.modifyMenu(store_idx,menu);
	}

	public int menuDelete(int store_idxD, int menu_idxD) {
		return mapper.deleteMenu(store_idxD,menu_idxD);
	}

}
