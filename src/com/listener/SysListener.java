package com.listener;

import java.net.MalformedURLException;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.context.support.FileSystemXmlApplicationContext;

import com.liu.data.access.NewsAccess;
import com.utils.FreemarkerUtils;
import com.utils.Page;
import com.vo.News;

public class SysListener implements ServletContextListener {
	@Autowired
	
	private NewsAccess newsAccess;
	private Page<News> page = new Page<News>();
	@Override
	public void contextDestroyed(ServletContextEvent arg0) {
		// TODO Auto-generated method stub

	}

	@Override
	public void contextInitialized(ServletContextEvent servletContextEvent) {
		
		
		ApplicationContext ad = new ClassPathXmlApplicationContext("applicationContext.xml"); 
		NewsAccess newsAccess=(NewsAccess)ad.getBean("newsAccessImpl");
	    System.out.println("正在生成页面模板，请稍候 ...... ");
		ServletContext ac = servletContextEvent.getServletContext(); 
		String path = ac.getRealPath("/"); 
		page.setPageSize(4);
		try {
			System.out.println(ac.getResource("/"));
		} catch (MalformedURLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		newsAccess.listNews(path, page);
		System.out.println("页面模板已生成完成!!!");
		
		
		List<News> list=newsAccess.listAll();
		for(News news:list){
			Map<String, News> map = new HashMap<String, News>();
			map.put("news", news);
			String sFileName = "/news/" + news.getId() + ".htm";
			//FreemarkerUtils fUtils = new FreemarkerUtils();
			//fUtils.geneHtmlFile(path, "view.ftl", map, sFileName);
			System.out.println("页面" + sFileName + "生成成功");
			
			
			
		}
		
		
		
		
		

	}

}
