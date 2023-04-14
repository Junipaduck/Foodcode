package com.itwillbs.foodcode.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itwillbs.foodcode.mapper.NoticeMapper;
import com.itwillbs.foodcode.vo.NoticeVO;

@Service
public class NoticeService {
	
	@Autowired
	private NoticeMapper mapper;

	public int registNotice(NoticeVO notice) {
		return mapper.insertNotice(notice);
	}

	// 4/15 배하나 - 수정중
//	public int noticeModify(NoticeVO notice) {
//		return mapper.updateNotice(notice);
//	}

}
