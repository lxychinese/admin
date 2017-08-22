package com.test;

public class Son  extends Father{
	Son(){
		System.out.println("s");
	}
	Son(int i){
		System.out.println("s"+i);
	}
	
	public String getName(){
		return "sn";
	}
	
	public static int getId(){
		return 2;
	}
	public static void main(String[] args) {
		Father father=new Son(2);
		//System.out.println(father.getName());
		//System.out.println(father.getId());
	}

}
