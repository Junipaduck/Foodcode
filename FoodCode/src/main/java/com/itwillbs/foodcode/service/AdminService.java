package com.itwillbs.foodcode.service;

import java.util.List;

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
	public int MemberDelect(String member_idx, String member_id) {
		
//		System.out.println("CustomerDelect 객체 안" + customer_idx+customer_passwd);
		return mapper.delectMember(member_idx, member_id);
	}

	public List<ReviewVO> getReviews() {
		return mapper.selectReviews();
	}


	public int managementDelete(String store_license, String owner_id) {
		return mapper.delectStore(store_license, owner_id);
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

	public int StoreApprove(String store_license) {
		
		return mapper.updateStoreApprove(store_license);
	}
	
	
	
}
