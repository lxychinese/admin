package com.test;

import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;

public class BusinessHandler implements InvocationHandler {
	
	private Object target = null;

	public BusinessHandler(Object target) {
		this.target = target;
	}

	@Override
	public Object invoke(Object proxy, Method method, Object[] args) throws Throwable {
		System.out.println("berode");
		Object result = method.invoke(target, args);
		System.out.println("after");
		return result;
	}
	
	public static void main(String[] args) {
		BusinessImpl bimpBusinessImpl=new BusinessImpl();
		BusinessHandler handler= new BusinessHandler(bimpBusinessImpl);
		Bussiness bussiness=(Bussiness) Proxy.newProxyInstance(bimpBusinessImpl.getClass().getClassLoader(),bimpBusinessImpl.getClass().getInterfaces(), handler);
		bussiness.doSomething();
		
	}

}
