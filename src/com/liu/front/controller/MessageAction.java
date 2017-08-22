package com.liu.front.controller;

import javax.servlet.http.HttpServletRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MessageAction  {
	
	@RequestMapping("/message")
	public String list(HttpServletRequest request, Model model) {
		return "message";
	}

	
}
