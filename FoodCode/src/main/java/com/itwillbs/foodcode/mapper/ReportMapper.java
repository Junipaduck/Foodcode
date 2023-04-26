package com.itwillbs.foodcode.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.itwillbs.foodcode.vo.ReportVO;

public interface ReportMapper {

	int insertStoreReport(ReportVO report);

	List<ReportVO> selectReportList();

}
