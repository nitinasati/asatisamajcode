package com.mkyong.customer.common;

import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.Interceptor;
 
public class PrintMsgInterceptor implements Interceptor{

        /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	//called during interceptor destruction
	public void destroy() {
		System.out.println("CustomInterceptor destroy() is called...");
	}

	//called during interceptor initialization
	public void init() {
		System.out.println("CustomInterceptor init() is called...");
	}

	//put interceptor code here
	public String intercept(ActionInvocation invocation) throws Exception {
		
		System.out.println("CustomInterceptor, before invocation.invoke()...");
		
		String result = invocation.invoke();
		
		System.out.println("CustomInterceptor, after invocation.invoke()...");
		
		return result;
	}
		
}