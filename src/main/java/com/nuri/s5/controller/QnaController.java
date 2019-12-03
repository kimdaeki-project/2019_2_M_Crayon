package com.nuri.s5.controller;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.nuri.s5.model.MemberVO;
import com.nuri.s5.model.QnaVO;
import com.nuri.s5.service.QnaService;
import com.nuri.s5.util.Pager;

@Controller
@RequestMapping("/qna/**")
public class QnaController {

	@Inject
	private QnaService qnaService;
	
	@GetMapping("qnaHome")
	public ModelAndView qnaList(Pager pager) throws Exception{
		List<QnaVO> ar =qnaService.qnaList(pager);
		
		ModelAndView mv = new ModelAndView();
		mv.addObject("list",ar);
		mv.addObject("pager", pager);
		mv.setViewName("qna/qnaHome");
		
		return mv;
	}
	
	@GetMapping("qnaQuestion")
	public void qnaQuestion(HttpSession session) throws Exception{
		MemberVO memberVO = (MemberVO)session.getAttribute("member");
		
		session.setAttribute("member", memberVO);
		
	}
	
	@PostMapping("qnaQuestion")
	public ModelAndView qnaQuestion(QnaVO qnaVO) throws Exception{
		ModelAndView mv = new ModelAndView();
		int result = qnaService.qnaQuestion(qnaVO);
		String msg ="등록 실패";
		if(qnaVO != null) {
			msg= "등록 성공";
			
		}
		
		mv.addObject("msg",msg);
		mv.addObject("path","../");
		mv.setViewName("common/common_result");
		
		return mv;
	}
	
}
