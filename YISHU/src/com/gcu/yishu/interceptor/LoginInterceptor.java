package com.gcu.yishu.interceptor;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.gcu.yishu.user.pojos.User;
import com.gcu.yishu.util.session.SessionUtil;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.MethodFilterInterceptor;
/*
 * 登录拦截器类
 * */
//拦截器
public class LoginInterceptor extends MethodFilterInterceptor{

	private SessionUtil sessionUtil;
	@Override
	protected String doIntercept(ActionInvocation invocation) throws Exception {		
	
		HttpServletRequest request = ServletActionContext.getRequest();
		Object obj = request.getSession().getAttribute("UserList");
        if(obj != null){
        	//处于登录状态
        	System.out.println("登录了");
        	//"放行"
        	return invocation.invoke();
        }else{
        	//不是登录状态，返回登录页
        	//回到result里找值
        	System.out.println("没登录");
        	return "Login";
        }
		
	}

}
