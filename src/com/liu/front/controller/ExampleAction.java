package com.liu.front.controller;


import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.liu.data.access.ProductAccess;
import com.utils.JspUtils;
import com.utils.Page;
import com.vo.News;
import com.vo.Product;

@Controller
public class ExampleAction  {
	@Autowired
	private ProductAccess productAccess;
	private Page<News> page = new Page<News>();
	
	@RequestMapping("/ex")
	public String list(HttpServletRequest request, Model model) {
		
		JspUtils.initPageFromExtGridParam(request, page);
		List<Product> list=new ArrayList<>();
		try {
			//list = productAccess.list();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		model.addAttribute("list", list);
		return "examples";
	}

	
}
