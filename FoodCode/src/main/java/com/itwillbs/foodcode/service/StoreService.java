package com.itwillbs.foodcode.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itwillbs.foodcode.mapper.OwnerMapper;
import com.itwillbs.foodcode.mapper.StoreMapper;
import com.itwillbs.foodcode.vo.*;

@Service
public class StoreService {

	@Autowired
	private StoreMapper mapper;
	
	// 가게등록
	public int insertStore(StoreVO store) {
		return mapper.insertStore(store);
	}
	
	// 가게리스트 전체타입(한식,일식,중식 등...) 
	public List<StoreVO> getStoreList(@Param("searchType") String searchType, @Param("searchKeyword") String searchKeyword) {
		return mapper.selectStoreList(searchType, searchKeyword);
	}
	
	public List<StoreVO> getStoreList1() {
		return mapper.selectStoreList1();
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

	public List<StoreVO> selectStoreList(StoreVO store) { // 가게 상세페이지 - 가게 정보 조회 
		
		return mapper.selectStoreListAll(store);
	}

	public List<StoreVO> selectStoreInfo(StoreVO store, int store_idx) {
		
		return mapper.selectStoreInfo(store, store_idx);
	}


	// 가게 상세페이지 리뷰 게시판 업체명 출력을 위한 코드 
	public List<StoreVO> getStoreInfo(StoreVO store) {
		
		return mapper.getStoreInfo(store);
	}

	public List<ReviewVO> getStoreReviewList(ReviewVO review) {
		
		return mapper.selectStoreReviewList(review);
	}

	// 리뷰게시판 점주 확인용
	public int getStoreOwner(String id, int store_idx) {
		
		return mapper.selectStoreOwner(id, store_idx);
	}

	// 예약건수 차트
	public List<StoreVO> bookingChart(StoreVO store) {
		return mapper.bookingChart(store);
	}
	
}
