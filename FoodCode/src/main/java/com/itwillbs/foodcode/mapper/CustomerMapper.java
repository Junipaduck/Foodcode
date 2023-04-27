package com.itwillbs.foodcode.mapper;

import java.util.*;

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

	int modifyMember(@Param("sId") String sId, @Param("member") MemberVO member , @Param("modifyMember") String modifyMember);

	List bookingList(String sId);

	List selectMyReview(String sId);

	List afterBookingList(String sId);

	int customerBookingCancle(String booking_idx);

	boolean isDuplicateMember(String member_id);

	String joinPerson(String email);

	boolean isDupilcateMemberEmail(String member_email);

	int insertKakaoMember(MemberVO member);

	String findId(MemberVO member);

	MemberVO selectMemberFindPasswd(MemberVO member);

	int updateMemberFindPasswd(MemberVO member);

}
