package com.nuri.s5.controller;

import java.text.SimpleDateFormat;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.nuri.s5.model.MemberVO;
import com.nuri.s5.service.MemberServiceImpl;

@Controller
@RequestMapping("/member/**")
public class MemberController {

	@Inject
	private MemberServiceImpl memberServiceImpl;

	// 회원가입 폼
	@GetMapping(value = "memberJoin")
	public void memberJoin() throws Exception {

	}

	// 회원가입
	@PostMapping(value = "memberJoin")
	public ModelAndView memberJoin(MemberVO memberVO, HttpSession session) throws Exception {
		int result = memberServiceImpl.memberJoin(memberVO, session);
		ModelAndView mv = new ModelAndView();
		String msg = "Join Fail";
		if (result > 0)
			msg = "Join Success";

		mv.addObject("msg", msg);
		mv.addObject("path", "../");
		mv.setViewName("common/common_result");
		return mv;
	}

	// 로그인 폼
	@GetMapping(value = "memberLogin")
	public void memberLogin() throws Exception {

	}

	// 로그인
	@PostMapping(value = "memberLogin")
	public ModelAndView memberLogin(MemberVO memberVO, HttpSession session) throws Exception {
		ModelAndView mv = new ModelAndView();
		memberVO = memberServiceImpl.memberLogin(memberVO);
		String msg = "로그인 실패";
		if (memberVO != null) {
			msg = "로그인 성공";
			session.setAttribute("member", memberVO);
		}
		mv.addObject("msg", msg);
		mv.addObject("path", "../");
		mv.setViewName("common/common_result");
		return mv;
	}

	// 로그아웃

	@GetMapping(value = "memberLogout")
	public String memberLogout(HttpSession session) throws Exception {
		session.invalidate();

		return "redirect:../";
	}

	// 마이페이지 폼

	@RequestMapping(value = "memberMyPage")
	public void memberMyPage() throws Exception {

	}

	// 업데이트 폼
	@GetMapping(value = "memberUpdate")
	public void memberUpdate() throws Exception {

	}

	// 업데이트
	@PostMapping(value = "memberUpdate")
	public ModelAndView memberUpdate(MemberVO memberVO, HttpSession session) throws Exception {
		ModelAndView mv = new ModelAndView();
		int result = memberServiceImpl.memberUpdate(memberVO);
		String msg = "수정 실패";
		if (memberVO != null) {
			msg = "수정 성공";
			session.setAttribute("member", memberVO);
		}
		mv.addObject("msg", msg);
		mv.addObject("path", "../");
		mv.setViewName("common/common_result");
		return mv;
	}

	// 회원 탈퇴
	@RequestMapping(value = "memberDelete", method = { RequestMethod.GET, RequestMethod.POST })
	public ModelAndView memberDelete(HttpSession session, MemberVO memberVO) throws Exception {
		int result = memberServiceImpl.memberDelete(memberVO);
		System.out.println(memberVO.getEmail());
		String msg = "Fail";

		ModelAndView mv = new ModelAndView();
		if (result > 0) {
			msg = "Success";
		}

		mv.addObject("msg", msg);
		mv.addObject("path", "../");
		mv.setViewName("common/common_result");

		session.invalidate();

		return mv;

	}
	
	//ID 찾기 폼 
	@GetMapping(value = "memberSearchID")
	public void memberSearchID() throws Exception{
		
	}
	//ID 찾기
	@PostMapping(value = "memberSearchID")
	public ModelAndView memberSearchID(MemberVO memberVO) throws Exception{
		ModelAndView mv = new ModelAndView();
		memberVO = memberServiceImpl.memberSearchID(memberVO);
		
		if(memberVO !=null) {
			mv.addObject("email", memberVO.getEmail());
		}else {
			mv.addObject("msg", "회원정보가 없습니다.");
		}
		
		mv.setViewName("member/memberSearchID");
		return mv;
	}
	
	//PW 찾기 폼 
	@GetMapping(value = "memberSearchPW")
	public void memberSearchPW()throws Exception{
		
	}
	
	//PW 찾기
	@PostMapping(value = "memberSearchPW")
	public ModelAndView memberSearchPW(MemberVO memberVO)throws Exception{
		ModelAndView mv = new ModelAndView();
		
		memberVO = memberServiceImpl.memberSearchPW(memberVO);	
			
		if(memberVO !=null) {
				mv.addObject("pw", memberVO.getPw());
		}else {
			mv.addObject("msg", "회원정보가 없습니다.");
		}
		
		mv.setViewName("member/memberSearchPW");
		
		return mv;
	}
	
	
	
	

}
