package com.itwillbs.foodcode.service;

import java.util.List;

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
	
	// 가게등록
	public int insertStore(StoreVO store) {
		return mapper.insertStore(store);
	}
	
	// 가게리스트 6개타입(한식,일식,중식 등...) 
	public List<StoreVO> getStoreList() {
		return mapper.selectStoreList();
	}

	public List<StoreVO> getStoreList2() {
		return mapper.selectStoreList2();
	}

	public List<StoreVO> getStoreList3() {
		return mapper.selectStoreList3();
	}
	
	public List<StoreVO> getStoreList4() {
		return mapper.selectStoreList4();
	}
	
	public List<StoreVO> getStoreList5() {
		return mapper.selectStoreList5();
	}

	public List<StoreVO> getStoreList6() {
		return mapper.selectStoreList6();
	}
	

}
