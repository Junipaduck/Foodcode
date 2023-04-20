package com.itwillbs.foodcode.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.itwillbs.foodcode.vo.StoreVO;

public interface StoreMapper {
	
	// 가게등록
	int insertStore(StoreVO store);
	
	// 가게리스트 6개타입(한식,일식,중식 등...) 
	List<StoreVO> selectStoreList(@Param("searchType") String searchType, 
									@Param("searchKeyword") String searchKeyword, 
									@Param("startRow") int startRow, 
									@Param("listLimit") int listLimit);

	List<StoreVO> selectStoreList2();

	List<StoreVO> selectStoreList3();
	
	List<StoreVO> selectStoreList4();
	
	List<StoreVO> selectStoreList5();
	
	List<StoreVO> selectStoreList6();

	List<StoreVO> selectStoreListAll(StoreVO store);

	List<StoreVO> selectStoreInfo(@Param("store") StoreVO store, @Param("store_idx") int store_idx);

	int selectStoreListCount(@Param("searchType") String searchType, 
							  @Param("searchKeyword") String searchKeyword);

}
