package com.itwillbs.foodcode.controller;

import org.springframework.beans.factory.annotation.*;
import org.springframework.stereotype.*;
import org.springframework.ui.*;
import org.springframework.web.bind.annotation.*;

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
    public String customerJoinPro(CustomerVO vo, Model model) {
        System.out.println("customerJoinPro");
        System.out.println(vo);
        int insertCnt = customerService.insertCustomer(vo);

        if(insertCnt > 0) {
            return "redirect:/main";
        } else {
            model.addAttribute("msg", "회원가입 실패!");
            return "fail_back";
        }
    }


    @GetMapping(value = "customerMypage.me")
    public String MemberInfo() {
        System.out.println("customerMypage.me");


        return "customer/customer_mypage";
    }

    @GetMapping(value = "/customerBooking.me")
    public String customerBooking() {
        System.out.println("customerBooking.me");


        return "customer/customer_booking";
    }

    @GetMapping(value = "/customerAfter.me")
    public String customerAfter() {
        System.out.println("customerAfter.me");


        return "customer/customer_after";
    }

    @GetMapping(value = "/customerLast.me")
    public String customerLast() {
        System.out.println("customerLast.me");


        return "customer/customer_last";
    }

    @GetMapping(value = "/customerReview.me")
    public String customerReview() {
        System.out.println("customerReview.me");


        return "customer/customer_review";
    }

//    // 예약관리 -> 방문후 -> 리뷰 리뷰컨트롤러로 이동 
//    @GetMapping(value = "/customerReviewWrite.me")
//    public String customerReviewWrite() {
//    	return "customer/customer_review_write";
//    }
    
    @GetMapping(value = "/customerModify.me")
    public String customerModify() {
        System.out.println("customerModify.me");


        return "customer/customer_modify";
    }

    @GetMapping(value = "/customerModifyPro.me")
    public String customerModifyPro(CustomerVO customer) {
        System.out.println("customerModifyPro.me");
//        int modifyCnt = customerService.modifyCustomer(customer);

        return "customer/customer_modify";
    }

    @GetMapping(value = "/customerReviewModify.me")
    public String customerReviewModify() {
        System.out.println("customerReviewModify.me");


        return "customer/customer_review_modify";
    }

}