package com.itwillbs.foodcode.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itwillbs.foodcode.mapper.NoticeMapper;
import com.itwillbs.foodcode.vo.NoticeVO;

@Service
public class NoticeService {
	
	@Autowired
	private NoticeMapper mapper;

	// 공지사항 글등록 작업
	public int registNotice(NoticeVO notice) {
		return mapper.insertNotice(notice);
	}

	// 공지사항 리스트 작업
	public List<NoticeVO> getNoticeList() {
		return mapper.selectNoticeList();
	}

	// 공지사항 상세페이지 select 작업
	public NoticeVO selectNoticeView(int notice_idx) {
		return mapper.selectNotice(notice_idx);
	}

	// 공지사항 수정 작업
	public int noticeModify(NoticeVO notice) {
		return mapper.updateNotice(notice);
	}
	
	// 공지사항 삭제 작업
	public int deleteNotice(int notice_idx) {
		return mapper.deleteNotice(notice_idx);
	}

	public NoticeVO selectNoticeBeforeModify(int notice_idx) {
		return mapper.selectNoticeBeforeModify(notice_idx);
	}



}
