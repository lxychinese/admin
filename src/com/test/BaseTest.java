package com.test;

import com.vo.wx.AccessToken;

public class BaseTest {
	private static final String SEND_ALL_URL = "https://api.weixin.qq.com/cgi-bin/message/mass/sendall?access_token=ACCESS_TOKEN";
	/**
	 * @param args
	 */
	public static void method(){
		String abc="E:\\meap\\WebRoot\\upload/1401008372217_dev.exe";
		String ask=abc.replaceAll("\\\\", "/");
		System.out.println(ask);
		
	}
	public static void main(String[] args) {
		
	}

}
