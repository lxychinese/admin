package com.liu.front.controller;

import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.OutputStream;
import java.net.URLEncoder;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.liu.data.access.NewsAccess;
import com.utils.FileUtils;
import com.utils.JspUtils;
import com.utils.Page;
import com.vo.News;

@Controller
public class NewsAction{
	@Autowired
	private NewsAccess newsAccess;
	private Page<News> page = new Page<News>();
	@RequestMapping("/new")
	public String list(HttpServletRequest request,Model model) {
		JspUtils.initPageFromExtGridParam(request, page);
		News news=null;
		 page.setPageSize(6);
	    page=newsAccess.list(page, news);
	   
	    model.addAttribute("page",page);
		return "news";
	}
	
	@RequestMapping("/down")
	public String getHelpDoc(HttpServletRequest request,HttpServletResponse response) throws Exception{
		response.setContentType("text/html; charset=UTF-8");
        //创建file对象
        String dir =request.getSession().getServletContext().getRealPath("/");
        String path=dir+"/lson.apk";
        //文件下载路径
        File file=new File(path);

        //设置response的编码方式
        response.setContentType("application/x-msdownload");

        //写明要下载的文件的大小
        response.setContentLength((int)file.length());
        //设置附加文件名解决中文乱码
        response.setHeader("Content-Disposition","attachment;filename=" + URLEncoder.encode("lson.apk","utf-8"));//);        

        //读出文件到i/o流
        FileInputStream fis=new FileInputStream(file);
        BufferedInputStream buff=new BufferedInputStream(fis);

        //从response对象中得到输出流,准备下载
        OutputStream myout=response.getOutputStream();

        FileUtils.copy(buff, myout);

        //将写入到客户端的内存的数据,刷新到磁盘
        myout.flush();
        System.out.println("=================================");
        //Struts2Utils.getRequest().getRequestDispatcher("lson.apk").forward(Struts2Utils.getRequest(), Struts2Utils.getResponse());

		return null;
	}
	
	
}
