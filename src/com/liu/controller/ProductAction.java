package com.liu.controller;


import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.liu.data.access.NewsAccess;
import com.liu.data.access.ProductAccess;
import com.utils.Page;
import com.vo.News;

@Controller
public class ProductAction  {
	
	@Autowired
	private ProductAccess newsAccess;
	private Page<News> page = new Page<News>();
	private Gson gson=new Gson();
	
	
	@RequestMapping("/editp")
	public String query(HttpServletRequest request, Model model) {
		return "pro-edit";
	}
	
	
	@ResponseBody
	@RequestMapping("/addp")
	public String add(News news, HttpServletRequest request, Model model) {
		 String path = request.getRealPath("/");
		try {
			newsAccess.add(news,path);
			return "1";
		} catch (Exception e) {
			e.printStackTrace();
			return "2";
		}
	}

	
}
