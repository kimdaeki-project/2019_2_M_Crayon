package com.nuri.s5.controller;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.nuri.s5.model.QnaVO;
import com.nuri.s5.service.QnaService;

@Controller
@RequestMapping("/qna/**")
public class QnaController {

	@Inject
	private QnaService qnaService;
	
	@GetMapping("qnaHome")
	public ModelAndView faqList(QnaVO qnaVO) throws Exception{
		List<QnaVO> ar =qnaService.qnaList(qnaVO);
		ModelAndView mv = new ModelAndView();
		mv.addObject("list",ar);
		mv.setViewName("qna/qnaHome");
		return mv;
	}
	
	
}
