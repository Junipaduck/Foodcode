package com.itwillbs.foodcode.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itwillbs.foodcode.mapper.AdminMapper;
import com.itwillbs.foodcode.vo.*;

@Service
public class AdminService {

	@Autowired
	private AdminMapper mapper;
	
	
	//---------------일반 회원 조회-------------
	public List<MemberVO> getMemberList() {
		
		return mapper.selectMemberList();
	}
	
	//---------------점주 회원 조회-------------
	public List<OwnerVO> getOwnerList() {
		
		return mapper.selectOwnerList();
	}
	
	//---------------식당 조회-------------
	public List<StoreVO> getStoreList() {
		
		return mapper.selectStoreList();
	}
	
	
	public MemberVO getMemberInfo(String id) {
		return mapper.selectMemberInfo(id);
	}
	
	//---------------일반 회원 삭제-------------
	public int MemberDelete(String member_idx, String member_id, String member_type) {
		
//		System.out.println("CustomerDelect 객체 안" + customer_idx+customer_passwd);
		return mapper.deleteMember(member_idx, member_id, member_type);
	}

//	public List<ReviewVO> getReviews() {
//		return mapper.selectReviews();
//	}


	public int managementDelete(String store_license, String owner_id) {
		return mapper.deleteStore(store_license, owner_id);
	}

	public List getStoreList2() {
		return mapper.getStoreList2();
	}

	
//---------------카운트-------------
	public String getMemberCount() {
		
		return mapper.getMemberCount();
	}
	
	public String getOwnerCount() {
		
		return mapper.getOwnerCount();
	}

	public String getStoreCount() {
		
		
		return mapper.getStoreCount();
	}

	public String getNoticeCount() {
		
		return mapper.getNoticeCount();
	}


	public String getReportCount() {
		
		return mapper.getReportCount();
	}
	
	public String getReviewCount() {
		
		return mapper.getReviewCount();
	}
	
	// =============식당 승인 리스트 조회 후 승인===============
	public List getNoApprove() {
		return mapper.getNoApprove();
	}
	
	public int StoreApprove(String store_license) {
		
		return mapper.updateStoreApprove(store_license);
	}
	
	// =============식당 메일 발송 후 신고 카운트 초기화===============
	
	public void deleteReportCount(String store_idx) {
		mapper.deleteReportCount(store_idx);
	}
	
	
	// =============리뷰 리스트 출력===============
	
	
	
	// =============리뷰 삭제===============
	
	public void deleteReview(String review_idx) {
		mapper.deleteReview(review_idx);
	}

	public List<ReviewVO> getReviewList() {
		
		return mapper.getReviewList();
	}

	public void addReportCount(String store_idx) {
		
		mapper.addReportCount(store_idx);
		
	}
	
	

	public List<MemberVO> reverseMemberList() {
		
		return mapper.reverseMemberList();
	}

	public List<OwnerVO> reverseOwnerList() {
		return mapper.reverseOwnerList();
	}

	public List<StoreVO> reverseStoreList() {
		return mapper.reverseStoreList();
	}

	
}
