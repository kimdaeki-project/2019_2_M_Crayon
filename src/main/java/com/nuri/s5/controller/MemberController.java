package com.nuri.s5.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.nuri.s5.model.MemberVO;
import com.nuri.s5.service.MemberServiceImpl;

@Controller
@RequestMapping("/member/**")
public class MemberController {
	@Inject
	private MemberServiceImpl memberServiceImpl;
	
	
	@GetMapping(value="memberJoin")
	public void memberJoin()throws Exception{
		
	}
	@PostMapping(value="memberJoin")
	public ModelAndView memberJoin(MemberVO memberVO, HttpSession session)throws Exception {
		int result = memberServiceImpl.memberJoin(memberVO, session);
		ModelAndView mv = new ModelAndView();
		String msg = "Join Fail";
		if(result > 0)
			msg = "Join Success";
		
		mv.addObject("msg", msg);
		mv.addObject("path", "../");
		mv.setViewName("common/common_result");
		return mv;
	}
	
	@GetMapping(value="memberLogin")
	public void memberLogin() {
		
	}
	
	@PostMapping(value="memberLogin")
	public void memberLogin(MemberVO memberVO,HttpSession session) throws Exception {
		memberServiceImpl.memberLogin(memberVO);
	}
	
	

}
