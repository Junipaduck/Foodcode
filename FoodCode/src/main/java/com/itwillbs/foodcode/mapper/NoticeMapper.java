package com.itwillbs.foodcode.mapper;

import java.util.List;

import com.itwillbs.foodcode.vo.NoticeVO;

public interface NoticeMapper {


	int insertNotice(NoticeVO notice);

	int updateNotice(NoticeVO notice);

	List<NoticeVO> selectNoticeList();

	NoticeVO selectNotice(int notice_idx);


	

}
