package com.utils;


import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;

import org.apache.http.HttpResponse;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.HttpClients;
import org.apache.http.util.EntityUtils;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import com.google.gson.JsonArray;

/**
 * 调用图灵机器人api接口，获取智能回复内容
 * @author pamchen-1
 *
 */
public class TulingApiProcess {
	/**
	 * 调用图灵机器人api接口，获取智能回复内容，解析获取自己所需结果
	 * @param content
	 * @return
	 */
	public static  String getTulingResult(String content){
		//String apiUrl = "http://www.tuling123.com/openapi/api?key=20fa42888f95bc60acfe5637304023a1&info=";
		String apiUrl="http://fanyi.youdao.com/openapi.do?keyfrom=lxychinese&key=721809440&type=data&doctype=json&version=1.1&q=";
		
		String param = "";
		try {
			System.out.println(content+"====");
			//param = apiUrl+URLEncoder.encode(content,"utf-8");
			param = apiUrl+content;
			System.out.println(param+"pa");
		} catch (Exception e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		} 
		
		/*hh* 发送httpget请求 */
		HttpGet request = new HttpGet(param);
		String result = "";
		try {
			HttpResponse response = HttpClients.createDefault().execute(request);
			if(response.getStatusLine().getStatusCode()==200){
				result = EntityUtils.toString(response.getEntity());
			}
		} catch (ClientProtocolException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		/** 请求失败处理 */
		if(null==result){
			return "对不起，你说的话真是太高深了……";
		}
		
		try {
			JSONObject json = new JSONObject(result);
			//以code=100000为例，参考图灵机器人api文档
//			if(100000==json.getInt("code")){
//				result = json.getString("text");
//			}
			JSONArray array=(org.json.JSONArray)json.get("translation");
			result=array.get(0)+"";
		} catch (JSONException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return result;
	}
	
	public static void main(String[] args) {
		System.out.println(getTulingResult("我爱你"));
	}
}