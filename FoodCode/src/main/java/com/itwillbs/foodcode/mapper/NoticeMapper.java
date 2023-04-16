package com.itwillbs.foodcode.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.itwillbs.foodcode.vo.NoticeVO;

public interface NoticeMapper {


	int insertNotice(NoticeVO notice);

	List<NoticeVO> selectNoticeList();

	NoticeVO selectNotice(int notice_idx);

	int updateNotice(NoticeVO notice);

	int deleteNotice(@Param("notice_idx") int notice_idx);

	

}
