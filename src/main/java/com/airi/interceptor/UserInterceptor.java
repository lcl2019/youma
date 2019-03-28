package com.airi.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import com.airi.model.User;

public class UserInterceptor implements HandlerInterceptor{
	private final static String LOGIN_URL="/login.jsp";

	public boolean preHandle(HttpServletRequest paramHttpServletRequest, HttpServletResponse paramHttpServletResponse,
			Object paramObject) throws Exception {
		String contextPath= paramHttpServletRequest.getContextPath();
		HttpSession session= paramHttpServletRequest.getSession();
		
		User user=(User) session.getAttribute("userSession");
		if(user==null||"".equals(user.toString())){
			paramHttpServletResponse.sendRedirect(contextPath+LOGIN_URL);
			
		}
		return true;
	}

	public void postHandle(HttpServletRequest paramHttpServletRequest, HttpServletResponse paramHttpServletResponse,
			Object paramObject, ModelAndView paramModelAndView) throws Exception {
		// TODO Auto-generated method stub
		
	}

	public void afterCompletion(HttpServletRequest paramHttpServletRequest,
			HttpServletResponse paramHttpServletResponse, Object paramObject, Exception paramException)
			throws Exception {
		// TODO Auto-generated method stub
		
	}

	

}
