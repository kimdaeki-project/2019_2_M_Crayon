package com.nuri.s5.interceptors;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.nuri.s5.model.MemberVO;

public class AdminInterceptor extends HandlerInterceptorAdapter{
	
	
	//Controller 진입 전
	@Override
	public boolean preHandle(HttpServletRequest request,HttpServletResponse response,Object handler)
		throws Exception{
		boolean result =false;
		MemberVO memberVO = (MemberVO)request.getSession().getAttribute("member");
		
		if(memberVO.getaCheck() ==1) {
			result = true;
		}else {
			response.sendRedirect("../error/common_400_error");
		}
		
		return result;
	}
	
	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response,
			Object handle, ModelAndView mv) throws Exception{
		
		super.postHandle(request, response, handle, mv);
	}
	

}
