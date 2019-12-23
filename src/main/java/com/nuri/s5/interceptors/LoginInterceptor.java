package com.nuri.s5.interceptors;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class LoginInterceptor extends HandlerInterceptorAdapter{

	//Controller 진입 전
	@Override
	public boolean preHandle(HttpServletRequest request,HttpServletResponse response,Object handler)
		throws Exception{
		
		//return이 true라면 Controller로 전송
		//false라면 Controller 전송 X
		boolean result = false;
		Object obj = request.getSession().getAttribute("member");
		
		if(obj != null) {
			result = true;
		}else {
			response.sendRedirect("../member/memberLogin");
		}
		
		return result;
	}
	
	
	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response,
				Object handle, ModelAndView mv) throws Exception{
		
		super.postHandle(request, response, handle, mv);
	}
	
}
