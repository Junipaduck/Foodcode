package com.itwillbs.foodcode.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class AdminController {
	
	@RequestMapping(value = "adminMain", method = {RequestMethod.GET, RequestMethod.POST})
	public String adminMain() {
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
	public String common_list(Model model) {
		
		return "/admin/customer_list";
	}
	
	@GetMapping(value = "adminStore_list")
	public String stoString(Model model) {
		
		return "/admin/store_list";
	}
	
}
