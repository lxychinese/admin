package com.liu.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class LoginAction {

	@RequestMapping("/fail")
	public String fail() {
		System.out.println("fail");
		return "/login";
	}
	
	 @RequestMapping("/loginsuccess")
	    public String loginsuccess(){
	        System.out.println("loginsuccess");
	        return "/index";
	    }
	
	 
	 @RequestMapping("/")
		public String abc() {
			System.out.println("/");
			return "/index";
		}
	 
	@RequestMapping("/in")
	public String in() {
		System.out.println("in");
		return "login";
	}

	
	@RequestMapping("/out")
	public String out(HttpServletRequest request,HttpServletResponse response) throws Exception {
		HttpSession session=request.getSession();
		if (request.getSession(false) != null) {
		    session.invalidate();
		}
		return "redirect:/in";
	}
}
