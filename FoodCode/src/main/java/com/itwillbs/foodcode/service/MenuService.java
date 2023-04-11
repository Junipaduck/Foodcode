package com.itwillbs.foodcode.service;

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

	public int insertMenu(MenuVO menu) {
		return mapper.insertMenu(menu);
	}
}
