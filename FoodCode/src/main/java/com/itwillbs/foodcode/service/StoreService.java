package com.itwillbs.foodcode.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itwillbs.foodcode.mapper.OwnerMapper;
import com.itwillbs.foodcode.mapper.StoreMapper;
import com.itwillbs.foodcode.vo.OwnerVO;
import com.itwillbs.foodcode.vo.StoreVO;

@Service
public class StoreService {

	@Autowired
	private StoreMapper mapper;
	
	public int insertStore(StoreVO store) {
		return mapper.insertStore(store);
	}
	

}
