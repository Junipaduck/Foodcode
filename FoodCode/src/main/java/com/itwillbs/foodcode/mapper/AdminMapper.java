package com.itwillbs.foodcode.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.itwillbs.foodcode.vo.CustomerVO;
import com.itwillbs.foodcode.vo.OwnerVO;
import com.itwillbs.foodcode.vo.StoreVO;

public interface AdminMapper {
	
	
	List<CustomerVO> selectCustomerList();
	
	List<OwnerVO> selectOwnerList();
	
	List<StoreVO> selectStoreList();
	
	int delectCustomer(@Param("customer_idx")String customer_idx, @Param("customer_passwd")String customer_passwd);
	
}
