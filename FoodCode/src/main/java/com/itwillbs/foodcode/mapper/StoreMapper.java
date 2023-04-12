package com.itwillbs.foodcode.mapper;

import java.util.List;

import com.itwillbs.foodcode.vo.StoreVO;

public interface StoreMapper {
	
	// 가게등록
	int insertStore(StoreVO store);
	
	// 가게리스트 6개타입(한식,일식,중식 등...) 
	List<StoreVO> selectStoreList();

	List<StoreVO> selectStoreList2();

	List<StoreVO> selectStoreList3();
	
	List<StoreVO> selectStoreList4();
	
	List<StoreVO> selectStoreList5();
	
	List<StoreVO> selectStoreList6();

	List<StoreVO> selectStoreInfo(StoreVO store);

}
