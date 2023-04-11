package com.itwillbs.foodcode.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itwillbs.foodcode.mapper.OwnerMapper;
import com.itwillbs.foodcode.vo.OwnerVO;

@Service
public class OwnerService {
	
	@Autowired
	private OwnerMapper mapper;
	
	public int insertOwner(OwnerVO vo) {
		return mapper.insertOwner(vo);
	}
	
	public boolean isSuccessOwner(OwnerVO vo) {
		return mapper.isSuccessOwner(vo);
	}
}
