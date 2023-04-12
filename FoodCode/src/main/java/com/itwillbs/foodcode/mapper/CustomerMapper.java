package com.itwillbs.foodcode.mapper;

import org.apache.ibatis.annotations.*;
import org.springframework.web.bind.annotation.*;

import com.itwillbs.foodcode.vo.*;

public interface CustomerMapper {

	int insertMember(MemberVO member);

	boolean isSuccessMember(MemberVO member);
	
	MemberVO selectMember(String sId);


	int deleteMember(String sId);

	String getPasswd(MemberVO member);

	String getPassword(String sId);

	int modifyMember(@Param("sId") String sId,@Param("member") MemberVO customer,@Param("member_passwd2") String member_passwd2);

}
