package com.itwillbs.foodcode.controller;

import java.util.*;

import javax.servlet.http.*;

import org.springframework.beans.factory.annotation.*;
import org.springframework.security.crypto.bcrypt.*;
import org.springframework.stereotype.*;
import org.springframework.ui.*;
import org.springframework.validation.*;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.*;

import com.itwillbs.foodcode.service.CustomerService;
//import com.itwillbs.foodcode.service.*;
import com.itwillbs.foodcode.vo.*;

@Controller
public class CustomerController {

    @Autowired
    private CustomerService customerService;

    @GetMapping(value = "/customerJoin.me")
    public String customerJoin() {
        System.out.println("customerJoin.me");


        return "customer/customer_join_form";
    }

    @GetMapping(value = "customerJoinPro.me")
    public String customerJoinPro(MemberVO member, Model model, @RequestParam String member_passwd2) {
        System.out.println("customerJoinPro");
        System.out.println(member);
//        System.out.println("평문 : " + vo.getC_passwd());
        if(member.getMember_passwd().equals(member_passwd2)) {
        	BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
        	String securePasswd = passwordEncoder.encode(member.getMember_passwd());
//		System.out.println("암호문 : " + securePasswd);
        	member.setMember_passwd(securePasswd);
        	int insertCnt = customerService.insertMember(member);
        	
        	if(insertCnt > 0) {
        		return "redirect:/main";
        	} else {
        		model.addAttribute("msg", "회원가입 실패!");
        		return "customer/fail_back";
        	}
        } else {
        	model.addAttribute("msg", "비밀번호가 서로 다름!");
        	return "customer/fail_back";
        }
    }


    @GetMapping(value = "MemberInfo.me")
    public String MemberInfo(HttpSession session,Model model) {
        System.out.println("MemberInfo.me");
        String sId = (String) session.getAttribute("sId");
		if(sId == null) {
			model.addAttribute("msg", "잘못된 접근입니다.");
			return "customer/fail_back";
		}

        return "customer/customer_mypage";
    }

    @GetMapping(value = "/customerBooking.me")
    public String customerBooking(HttpSession session,Model model) {
        System.out.println("customerBooking.me");
        String sId = (String) session.getAttribute("sId");
		if(sId == null) {
			model.addAttribute("msg", "잘못된 접근입니다.");
			return "customer/fail_back";
		}

        return "customer/customer_booking";
    }

    @GetMapping(value = "/customerAfter.me")
    public String customerAfter(HttpSession session,Model model) {
        System.out.println("customerAfter.me");
        String sId = (String) session.getAttribute("sId");
		if(sId == null) {
			model.addAttribute("msg", "잘못된 접근입니다.");
			return "customer/fail_back";
		}

        return "customer/customer_after";
    }

    @GetMapping(value = "/customerLast.me")
    public String customerLast(HttpSession session,Model model) {
        System.out.println("customerLast.me");
        String sId = (String) session.getAttribute("sId");
		if(sId == null) {
			model.addAttribute("msg", "잘못된 접근입니다.");
			return "customer/fail_back";
		}

        return "customer/customer_last";
    }

    @GetMapping(value = "/customerReview.me")
    public String customerReview(HttpSession session,Model model) {
        System.out.println("customerReview.me");
        String sId = (String) session.getAttribute("sId");
		if(sId == null) {
			model.addAttribute("msg", "잘못된 접근입니다.");
			return "customer/fail_back";
		}

        return "customer/customer_review";
    }

    @GetMapping(value = "/customerModify.me")
    public ModelAndView customerModify(HttpSession session, Model model) {
        System.out.println("customerModify.me");
        System.out.println("customerModify.me");
		String sId = (String)session.getAttribute("sId");
		System.out.println(sId);
		
		MemberVO member = customerService.selectMember(sId);
		model.addAttribute("member", member);
		
		
		System.out.println(member);
		Map<String, MemberVO> map = new HashMap<String, MemberVO>();
		map.put("member", member);

        return new ModelAndView("customer/customer_modify","map",map);
    }

    @GetMapping(value = "/customerModifyPro.me")
    public String customerModifyPro(MemberVO member,HttpSession session,Model model,@RequestParam String modifyMember,@RequestParam String modifyMember2) {
        System.out.println("customerModifyPro.me");
        System.out.println(member);
        String sId = (String)session.getAttribute("sId");
        BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
        String passwd = customerService.getPassword(sId);
        System.out.println(member);
        if(encoder.matches(member.getMember_passwd(), passwd)) { // 패스워드가 세션 아이디의 패스워드와 동일함
        	if(modifyMember.equals(modifyMember2)) { // 변경할 비밀번호가 비밀번호 확인과 동일함
        	int modifyCnt = customerService.modifyMember(sId,member,modifyMember);
	        	if(modifyCnt > 0) { // 정보 수정이 되었을 때
	        		return "redirect:/customerModify.me";
	        	} else { // 정보 수정이 되지 않았을 때
	        		model.addAttribute("msg", "회원 정보 수정 실패!");
	        		return "customer/fail_back";
	        	}
        	} else { // 변경할 비밀번호가 비밀번호 확인과 동일 하지 않음 
        		model.addAttribute("msg", "변경할 비밀번호가 동일하지 않습니다!");
        		return "customer/fail_back";
        	}
        } else { // 패스워드가 세션 아이디의 패스워드와 동일함 
        	model.addAttribute("msg", "비밀번호 틀림!");
        	return "customer/fail_back";
        }
    }

    @GetMapping(value = "/customerDelete.me")
    public String customerDelete(HttpSession session,Model model) {
    	System.out.println("customerDelete.me");
    	String sId = (String) session.getAttribute("sId");
		if(sId == null) {
			model.addAttribute("msg", "잘못된 접근입니다.");
			return "customer/fail_back";
		}
    	int deleteCustomer = customerService.deleteMember(sId);
    	session.invalidate();
    	
    	
    	return "redirect:/";
    }
    
    @GetMapping(value = "/customerReviewModify.me")
    public String customerReviewModify() {
        System.out.println("customerReviewModify.me");


        return "customer/customer_review_modify";
    }

}