package com.nuri.s5.controller;

import java.text.SimpleDateFormat;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.nuri.s5.model.MemberVO;
import com.nuri.s5.model.ReviewVO;
import com.nuri.s5.model.TourCalendarVO;
import com.nuri.s5.service.MemberServiceImpl;
import com.nuri.s5.util.Pager;

@Controller
@RequestMapping("/member/**")
public class MemberController {

	@Inject
	private MemberServiceImpl memberServiceImpl;
	
	
	
	
	
	
	
	
	@GetMapping(value="memberResult")
	public String memberResult(Pager pager, Model model) throws Exception{
		pager.setPerPage(10);
		List<MemberVO> ar = memberServiceImpl.memberList(pager);
		
		model.addAttribute("list", ar);
		
		return "member/memberResult";
	}
	
	
	
	

	// 카카오 회원가입
	@PostMapping(value = "memberKakao")
	public String memberKakao(MemberVO memberVO, HttpSession session) throws Exception {
		String email = memberVO.getEmail().replace("\"", "");
		String name = memberVO.getName().replace("\"", "");

		memberVO.setkCheck(1);
		memberVO.setEmail(email);
		memberVO.setName(name);
		session.setAttribute("member", memberVO);
		memberVO = memberServiceImpl.selectKakao(memberVO, session);

		if (memberVO != null) {
			System.out.println("중복된 아이디");
		} else {
			System.out.println("회원가입 가능한 아이디");
			MemberVO memberVO2 = new MemberVO();
			memberVO2.setEmail(email);
			memberVO2.setName(name);

			session.setAttribute("member", memberVO2);
			int result = memberServiceImpl.memberKakao(memberVO2, session);
		}

		return "redirect:../";
	}

	@GetMapping(value = "memberKakao")
	public void memberKakao() throws Exception {

	}

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
	
	
	// 관리자 폼

		@RequestMapping(value = "adminPage")
		public void adminPage() throws Exception {

		}
	
	

	// 업데이트 폼
	@GetMapping(value = "memberUpdate")
	public void memberUpdate(HttpSession session) throws Exception {
		MemberVO memberVO = (MemberVO) session.getAttribute("member");

		session.setAttribute("member", memberVO);
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

	@GetMapping(value = "memberDelete")
	public ModelAndView memberDelete(HttpSession session, MemberVO memberVO) throws Exception {
		int result = memberServiceImpl.memberDelete(memberVO);

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
	
	@GetMapping(value = "memberAdminDelete")
	public ModelAndView memberAdminDelete(MemberVO memberVO)throws Exception{
		int result = memberServiceImpl.memberAdminDelete(memberVO);
		
		String msg = "Fail";

		ModelAndView mv = new ModelAndView();
		if (result > 0) {
			msg = "Success";
		}

		mv.addObject("msg", msg);
		mv.addObject("path", "./");
		mv.setViewName("common/common_result");
		return mv;
		
	}
	

	// ID 중복확인(이메일)
	@GetMapping(value = "memberIdCheck")
	public Model memberIdCheck(MemberVO memberVO, Model model) throws Exception {
		memberVO = memberServiceImpl.memberIdCheck(memberVO);

		String msg = "아이디입니다.";
		if (memberVO == null) {
			msg = "사용가능한 아이디입니다.";
		}

		model.addAttribute("dto", memberVO);
		model.addAttribute("msg", msg);

		return model;

	}

	// ID 찾기 폼 (이메일)
	@GetMapping(value = "memberSearchID")
	public void memberSearchID() throws Exception {

	}

	// ID 찾기(이메일)
	@PostMapping(value = "memberSearchID")
	public ModelAndView memberSearchID(MemberVO memberVO) throws Exception {
		ModelAndView mv = new ModelAndView();
		memberVO = memberServiceImpl.memberSearchID(memberVO);

		if (memberVO != null) {
			mv.addObject("email", memberVO.getEmail());
		} else {
			mv.addObject("msg", "회원정보가 없습니다.");
		}

		mv.setViewName("member/memberSearchID");
		return mv;
	}

	// PW 찾기 폼
	@GetMapping(value = "memberSearchPW")
	public void memberSearchPW() throws Exception {

	}

	// PW 찾기
	@PostMapping(value = "memberSearchPW")
	public ModelAndView memberSearchPW(MemberVO memberVO) throws Exception {
		ModelAndView mv = new ModelAndView();

		memberVO = memberServiceImpl.memberSearchPW(memberVO);

		if (memberVO != null) {
			mv.addObject("pw", memberVO.getPw());
		} else {
			mv.addObject("msg", "회원정보가 없습니다.");
		}

		mv.setViewName("member/memberSearchPW");

		return mv;
	}

	// memberList

	@GetMapping(value = "memberList")
	public ModelAndView adminPage(Pager pager) throws Exception {
		ModelAndView mv = new ModelAndView();
		List<MemberVO> ar = memberServiceImpl.memberList(pager);
		mv.addObject("list", ar);
		mv.addObject("pager", pager);
		mv.setViewName("member/memberList");
		return mv;
	}
	
	
	//투어 추가 
	
	@GetMapping(value="touradd")
	public void touradd()throws Exception{
		
	}
	
		@PostMapping(value="touradd")
		public ModelAndView touradd(TourCalendarVO tourCalendarVO)throws Exception{
			int result = memberServiceImpl.touradd(tourCalendarVO);
			System.out.println("tt");
			ModelAndView mv = new ModelAndView();
			String msg = "Fail";
			if (result > 0)
				msg = "Success";

		
		  mv.addObject("msg", msg); mv.addObject("path", "./adminPage");
		  mv.setViewName("common/common_result");
		 
			return mv;
			
		}
		
	//투어 삭제 
		@GetMapping(value = "tourDelete")
		public void tourDelete ()throws Exception{
			
		}
		
		@PostMapping(value = "tourDelete")
		public ModelAndView tourDelete(TourCalendarVO tourCalendarVO)throws Exception{
			int result = memberServiceImpl.tourDelete(tourCalendarVO);
			ModelAndView mv = new ModelAndView();
			String msg = "Fail";
			if (result > 0) {
				msg = "Success";
				}

		
		  mv.addObject("msg", msg); 
		  mv.addObject("path", "./adminPage");
		  mv.setViewName("common/common_result");
		 
			return mv;
			
		}
	
	

}
