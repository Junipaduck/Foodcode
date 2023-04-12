package com.itwillbs.foodcode.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.itwillbs.foodcode.service.AdminService;
import com.itwillbs.foodcode.service.CustomerService;
import com.itwillbs.foodcode.vo.CustomerVO;
import com.itwillbs.foodcode.vo.OwnerVO;
import com.itwillbs.foodcode.vo.StoreVO;

@Controller
public class AdminController {
	
	 @Autowired
	 private AdminService adminService;
	
	@RequestMapping(value = "adminMain", method = {RequestMethod.GET, RequestMethod.POST})
	public String adminMain(Model model) {
		
		List<CustomerVO> customerList = adminService.getCustomerList();
		model.addAttribute("customerList", customerList);
		
		List<OwnerVO> ownerList = adminService.getOwnerList();
		model.addAttribute("ownerList", ownerList);
		
		List<StoreVO> storeList = adminService.getStoreList();
		model.addAttribute("storeList", storeList);
		
		return "/admin/admin_main";
	}
	
	
	@GetMapping(value = "adminLogin.me")
	public String adminLogin() {
		
		return "/admin/longin";
	}
	
	@PostMapping(value = "adminLoginPro.me")
	public String adminLoginPro(@RequestParam String id, @RequestParam String passwd , HttpSession session) {
		System.out.println("아이디 : " + id + ", 패스워드 : " + passwd);
		session.setAttribute("sId", id);
		System.out.println(session.getAttribute("sId"));
		return "redirect:/adminMain";
	}
	
	@GetMapping(value = "adminLogout.me")
    public String logout(HttpSession session) {
        session.invalidate();

        return "redirect:/adminMain";
    }
	
	
// ==============리스트===========================	
	
	@GetMapping(value = "adminCustomer_list")
	public String customerList(Model model) {
		
		List<CustomerVO> customerList = adminService.getCustomerList();
		
		model.addAttribute("customerList", customerList);
		
		return "/admin/customer_list";
	}
	
	@GetMapping(value = "adminOwner_list")
	public String ownerList(Model model) {
		
		List<OwnerVO> ownerList = adminService.getOwnerList();
		
		model.addAttribute("ownerList", ownerList);
		
		return "/admin/owner_list";
	}
	
	@GetMapping(value = "adminStore_list")
	public String storeList(Model model) {
		
		List<StoreVO> storeList = adminService.getStoreList();
		
		model.addAttribute("storeList", storeList);
		
		return "/admin/store_list";
	}
	
// ================일반 회원 삭제======================	

	
	@GetMapping(value = "adminCustomer_delect")
	public String customerDelect() {
		
		return "/admin/customer_delect";
	}
	
	@PostMapping(value = "adminCustomerDeletePro")
	public String customerDelectPro(@RequestParam String customer_idx, 
			@RequestParam String customer_passwd ) {
		
		System.out.println(customer_idx + customer_passwd);
		
		int isDeleteSuccess = adminService.CustomerDelect(customer_idx, customer_passwd);
		
		if(isDeleteSuccess>0) {
			return "redirect:/adminCustomer_list";
		}
		return "redirect:/adminCustomer_list";
	}
	
	
	
}
