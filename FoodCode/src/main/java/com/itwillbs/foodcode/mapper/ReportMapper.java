package com.itwillbs.foodcode.mapper;

import org.apache.ibatis.annotations.Param;

import com.itwillbs.foodcode.vo.ReportVO;

public interface ReportMapper {

	int insertStoreReport(ReportVO report);

}
