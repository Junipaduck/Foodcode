package com.itwillbs.foodcode.mapper;

import org.apache.ibatis.annotations.*;
import org.springframework.web.bind.annotation.*;

import com.itwillbs.foodcode.vo.CustomerVO;

public interface CustomerMapper {

	int insertCustomer(CustomerVO vo);

	boolean isSuccessCustomer(CustomerVO vo);
	
	CustomerVO selectCustomer(String sId);


	int deleteCustomer(String sId);

	String getPasswd(CustomerVO vo);

	String getPassword(String sId);

	int modifyCustomer(@Param("sId") String sId,@Param("customer") CustomerVO customer);

}
