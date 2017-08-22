package com.liu.data.access;

import java.util.List;

import org.json.JSONObject;

import com.utils.Page;
import com.vo.News;
import com.vo.Product;

public interface ProductAccess {
	public Page<News> list(Page<News> page, News news);
	public News info(int id);
	public int add(final News news,String path);
	public int update(final News news,String path);
	public List<News> list1() ;
	public Page<News> listNews(String path, Page<News> page);
	public List<News> listAll();
	public JSONObject blist(String search,String start ,String echo,String iDisplayLength) ;

}
