package com.itwillbs.foodcode.service;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itwillbs.foodcode.mapper.ReportMapper;
import com.itwillbs.foodcode.vo.ReportVO;


@Service
public class ReportService {

	@Autowired
	private ReportMapper mapper;
	
	public int insertStoreReport(ReportVO report) {
		return mapper.insertStoreReport(report);
	}

}
