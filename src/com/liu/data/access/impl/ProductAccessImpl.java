package com.liu.data.access.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.lang.StringUtils;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.PreparedStatementCreator;
import org.springframework.jdbc.support.GeneratedKeyHolder;
import org.springframework.jdbc.support.KeyHolder;
import org.springframework.stereotype.Service;

import com.liu.data.access.ProductAccess;
import com.utils.FreemarkerUtils;
import com.utils.Page;
import com.utils.TimeUtil;
import com.vo.News;
import com.vo.Product;

@Service
public class ProductAccessImpl implements ProductAccess {

	@Autowired
	private JdbcTemplate jdbcTemplate;

	@Override
	public Page<News> list(Page<News> page, News news) {
		int start = (page.getPageNo() - 1) * page.getPageSize();
		String sql = "select id,title,memo,createTime,url from product ";
		
				
		sql+="order by id desc  limit " + start + "," + page.getPageSize() + "";
		System.out.println(sql);
		List<News> list = jdbcTemplate.query(sql, new BeanPropertyRowMapper(News.class));
		page.setResult(list);
		page.setTotalItems(count());
		page.setTotalPages(42);
		return page;
	}

	
	
	public JSONObject blist(String search,String start ,String echo,String iDisplayLength) {
		String sql = "select id,title,memo,createTime,url,is_top,is_use from product  where 1=1";
		String where="";
		if(StringUtils.isNotEmpty(search)){
			where +=" and title like '%"+search+"%'";
			
		}		
		sql+= where +" limit " + start + ","+iDisplayLength+"";
		System.out.println(sql);
		List<News> list = jdbcTemplate.query(sql, new BeanPropertyRowMapper(News.class));
	
		
		
		String countSQL = "select COUNT(1) from product  where 1=1 "+where  ;
		int count = jdbcTemplate.queryForInt(countSQL);
		
		   
	    JSONObject getObj = new JSONObject();
	    getObj.put("sEcho", echo);// 不知道这个值有什么用,有知道的请告知一下
	    getObj.put("iTotalRecords", count);//实际的行数
	    getObj.put("iTotalDisplayRecords",count);//显示的行数,这个要和上面写的一样
	    getObj.put("aaData",list);//要以JSON格式返回
	    
	    
	    
		return getObj;
	}
	
	
	
	@Override
	public List<News> list1() {
		String sql = "select id,title,memo,createTime,content,url from product order by id desc  ";
		List<News> list = jdbcTemplate.query(sql, new BeanPropertyRowMapper(News.class));
		return list;
	}
	
	
	
	@Override
	public List<News> listAll() {
		String sql = "select id,title,memo,createTime,content,url from product ";
		List<News> list = jdbcTemplate.query(sql, new BeanPropertyRowMapper(News.class));
		return list;
	}
	
	
	public int count() {
		String sql = "select count(1) from product order by title";
		int count = jdbcTemplate.queryForInt(sql);
		return count;
	}

	@Override
	public News info(int id) {
		String sql = "select * from product where id=?";
		News news = jdbcTemplate.queryForObject(sql, new Object[] { id }, new BeanPropertyRowMapper(News.class));
		return news;

	}
	
	
	public Page<News> listNews(String path, Page<News> page) {
		
		try {
			List<News> list=list1();
			Map<String, Object> data = new HashMap<String, Object>();
			Map<Integer, Object> root = new HashMap<Integer, Object>();
			for (News news : list) {

				root.put(news.getId(), news);
			}
			data.put("list", list);
			String sFileName = "index.htm";
			FreemarkerUtils fUtils = new FreemarkerUtils();
			//fUtils.geneHtmlFile(path, "index.ftl", data, sFileName);
			page.setResult(list);
			page.setTotalItems(4);
		} catch (Exception e) {
			e.printStackTrace();
		} 
		return page;
	}
	
	
	

	@Override
	public int add(final News news, String path) {
		KeyHolder keyHolder = new GeneratedKeyHolder();
		final String sql = "insert into product(title,content,createTime,is_use,is_top,type,memo)values(?,?,?,?,?,?,?)";
		jdbcTemplate.update(new PreparedStatementCreator() {
			@Override
			public PreparedStatement createPreparedStatement(Connection con) throws SQLException {
				PreparedStatement ps = con.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
				ps.setString(1, news.getTitle());
				ps.setString(2, news.getContent());
				ps.setString(3, TimeUtil.getString(new Date(),TimeUtil.F_YYYY_MM_DD_HH_MM));
				ps.setInt(4, news.getIs_use());
				ps.setInt(5, news.getIs_top());
				ps.setInt(6, news.getType());
				ps.setString(7, news.getMemo());
				return ps;
			}
		}, keyHolder);

		// 更新URL
		int num = keyHolder.getKey().intValue();
		String sql1 = "update news set url=? where id=?";
		jdbcTemplate.update(sql1, num + ".htm", num);
		// 使用模板生成静态页面

		Map<String, News> map = new HashMap<String, News>();
		news.setCreateTime(TimeUtil.getString(new Date(),TimeUtil.F_YYYY_MM_DD_HH_MM));
		map.put("news", news);
		String sFileName = "/news/" + num + ".htm";
		FreemarkerUtils fUtils = new FreemarkerUtils();
	//	fUtils.geneHtmlFile(path, "view.ftl", map, sFileName);
		System.out.println("页面" + sFileName + "生成成功");
		return 0;
	}

	@Override
	public int update(final News news, String path) {
		String sql = "update product set title=?,content=?,is_top=?,is_use=?,type=?,memo=? where id=?";
		int num = jdbcTemplate.update(sql, news.getTitle(), news.getContent(), news.getIs_top(), news.getIs_use(), news.getType(), news.getMemo(), news.getId());
		// 使用模板生成静态页面

		news.setCreateTime(TimeUtil.getString(new Date(),TimeUtil.F_YYYY_MM_DD_HH_MM));
		Map<String, News> map = new HashMap<String, News>();
		map.put("news", news);
		String sFileName = "/news/" + news.getId() + ".htm";
		FreemarkerUtils fUtils = new FreemarkerUtils();
		//fUtils.geneHtmlFile(path, "view.ftl", map, sFileName);
		System.out.println("页面" + sFileName + "更新成功");
		return num;
	}
}
