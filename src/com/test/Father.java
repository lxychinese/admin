package com.test;

public class Father {
	Father(){
		System.out.println("f");
	}
	Father(int i){
		System.out.println("f"+i);
	}
	
	public static int getId(){
		return 1;
	}
	public String getName(){
		return "fn";
	}
	


}


