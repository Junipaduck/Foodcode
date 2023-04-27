package com.itwillbs.foodcode.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itwillbs.foodcode.mapper.ReportMapper;
import com.itwillbs.foodcode.vo.NoticeVO;
import com.itwillbs.foodcode.vo.ReportVO;


@Service
public class ReportService {

	@Autowired
	private ReportMapper mapper;
	
	public int insertStoreReport(ReportVO report) {
		return mapper.insertStoreReport(report);
	}
	
	public List<ReportVO> getReportList() {
		return mapper.selectReportList();
	}

}
