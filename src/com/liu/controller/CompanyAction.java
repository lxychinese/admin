package com.liu.controller;


import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.servlet.http.HttpServletRequest;

import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import com.liu.data.access.NewsAccess;
import com.utils.ExtUtils;
import com.utils.FreemarkerUtils;
import com.utils.Page;
import com.vo.DataTable;
import com.vo.News;

@Controller
public class CompanyAction  {
	@Autowired
	private NewsAccess newsAccess;
	private Page<News> page = new Page<News>();
	private Gson gson=new Gson();
	/**
	 * 查询界面
	 * 
	 * @param request
	 * @param model
	 * @return
	 */
	@RequestMapping("/edit")
	public String query(HttpServletRequest request, Model model) {
		return "new-edit";
	}
	
	
	@ResponseBody
	@RequestMapping("/add")
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
	
	@ResponseBody
	@RequestMapping("/update")
	public String update(News news, HttpServletRequest request, Model model) {
		String path = request.getRealPath("/");
		try {
			newsAccess.update(news,path);
			return "1";
		} catch (Exception e) {
			e.printStackTrace();
			return "2";
		}
	}
	
	@RequestMapping("/list")
	public String list(HttpServletRequest request, Model model) {
		
		News news=new News();;
		String type=request.getParameter("type")==null?"0":request.getParameter("type");
		news.setType(Integer.parseInt(type));
		page=newsAccess.list(page, news);
		model.addAttribute("page",page);
		
		return "new-list";
	}

	@ResponseBody
	
	@RequestMapping(value = "/listJson", produces = "text/json;charset=UTF-8")
	
	public String listJson(HttpServletRequest request, Model model) {
		ExtUtils.initPageFromExtGridParam(request, page);
		News news=new News();;
		String type=request.getParameter("type")==null?"0":request.getParameter("type");
		news.setType(Integer.parseInt(type));
		page=newsAccess.list(page, news);
		return gson.toJson(page);
	}
	@ResponseBody
	
	@RequestMapping(value = "/blistJson", produces = "text/json;charset=UTF-8")
	
	public String blistJson(HttpServletRequest request,String aoData, Model model) {
		
		
		String sEcho = "";// 记录操作的次数  每次加1
	    String iDisplayStart = "";// 起始
	    String iDisplayLength = "";// size
	    String sSearch = "";// 搜索的关键字
	    int count = 0 ;  //查询出来的数量
	    
	    String orderColumn="";
	    String search="";
	    System.out.println(aoData);
	    String orderDir="";
	    List<AoData> jsonarray = gson.fromJson(aoData, new TypeToken<List<AoData>>() {
		}.getType());
	    
	    
	    for (int i = 0; i < jsonarray.size(); i++) {
	    	AoData obj = (AoData) jsonarray.get(i);
            if (obj.getName().equals("sEcho"))
                sEcho = obj.getValue();
            if (obj.getName().equals("iDisplayStart"))
                iDisplayStart = obj.getValue();
            if (obj.getName().equals("iDisplayLength"))
                iDisplayLength = obj.getValue();
            if (obj.getName().equals("sSortDir_0"))
                orderDir = obj.getValue();
            if (obj.getName().equals("iSortCol_0"))
                orderColumn = obj.getValue();
            if (obj.getName().equals("sSearch"))
                search = obj.getValue();
        }
	    
	    
	    System.out.println(sEcho+" "+iDisplayStart+" "+iDisplayLength);
	    // 生成20条测试数据
	  
	    JSONObject getObj=newsAccess.blist(search, iDisplayStart,sEcho, iDisplayLength);
	    
	 
	    return getObj.toString();
	   
	    
	    
	}
	
	

	@ResponseBody
	@RequestMapping("/listJson2")
	public String listJson2(@RequestParam String aoData, Model model) {
		  String sEcho = "";// 记录操作的次数  每次加1
		    String iDisplayStart = "";// 起始
		    String iDisplayLength = "";// size
		    String sSearch = "";// 搜索的关键字
		    int count = 0 ;  //查询出来的数量
		    System.out.println(aoData);
		List<DataTable> list=gson.fromJson(aoData, new TypeToken<List<DataTable>>() {
        }.getType());
		
	    for (DataTable obj:list) {
	        
	        if (obj.getName().equals("sEcho"))
	          sEcho = obj.getValue();
	        if (obj.getName().equals("iDisplayStart"))
	          iDisplayStart = obj.getValue();
	        if (obj.getName().equals("iDisplayLength"))
	          iDisplayLength = obj.getValue();
	        if (obj.getName().equals("sSearch"))
	          sSearch = obj.getValue();
	      }
	      
		System.out.println(sEcho+" "+iDisplayStart+" "+iDisplayLength);
	    // 生成20条测试数据
	    List<News> ls=newsAccess.list1();
	  
	     
	    JSONObject getObj = new JSONObject();
	    getObj.put("sEcho", sEcho);// 不知道这个值有什么用,有知道的请告知一下
	    getObj.put("iTotalRecords", ls.size());//实际的行数
	    getObj.put("iTotalDisplayRecords", ls.size());//显示的行数,这个要和上面写的一样
	    getObj.put("aaData", ls.subList(Integer.parseInt(iDisplayStart),Integer.parseInt(iDisplayStart + iDisplayLength)));//要以JSON格式返回
	    return getObj.toString();
	}
	
	@ResponseBody
	@RequestMapping("/info1")
	public String info1(HttpServletRequest request, Model model) {
		
		String id=request.getParameter("id");
		News news= newsAccess.info(Integer.parseInt(id));
		return gson.toJson(news);
	}
	
	
	@RequestMapping("/info22")
	public String info22(HttpServletRequest request, Model model) {
		
		String id=request.getParameter("id");
		News news= newsAccess.info(Integer.parseInt(id));
		Pattern p = Pattern.compile("\t|\r|\n");
		Matcher m = p.matcher(news.getContent());
		String dest = m.replaceAll("");
		news.setContent(dest.replace("'", "\""));
		model.addAttribute("news", news);
		return "new-edit";
	}
	
	@ResponseBody
	@RequestMapping("/gen")
	public String gen(HttpServletRequest request, Model model) {
		ExtUtils.initPageFromExtGridParam(request, page);
		List<News> list=newsAccess.list1();
		FreemarkerUtils utils=new FreemarkerUtils();
		Map<String, List<News>> map = new HashMap<String, List<News>>();
		map.put("list", list);
		//utils.geneHtmlFile(request.getRealPath("/"), "index.ftl", map, "index.htm");
		System.out.println("页面生成成功");
		return null;
		
	}
}
