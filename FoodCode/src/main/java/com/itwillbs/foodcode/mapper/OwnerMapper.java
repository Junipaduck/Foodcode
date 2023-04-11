package com.itwillbs.foodcode.mapper;

import com.itwillbs.foodcode.vo.OwnerVO;

public interface OwnerMapper {

	int insertOwner(OwnerVO vo);
	
	boolean isSuccessOwner(OwnerVO vo);
}
