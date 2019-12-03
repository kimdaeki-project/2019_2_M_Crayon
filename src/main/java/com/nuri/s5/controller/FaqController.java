package com.nuri.s5.controller;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.nuri.s5.model.FaqVO;
import com.nuri.s5.service.FaqService;

@Controller
@RequestMapping("/faq/**")
public class FaqController {

	@Inject
	private FaqService faqService;
	
	@GetMapping("faqHome")
	public ModelAndView faqList(FaqVO faqVO) throws Exception{
		List<FaqVO> ar =faqService.faqList(faqVO);
		ModelAndView mv = new ModelAndView();
		mv.addObject("list",ar);
		mv.setViewName("faq/faqHome");
		return mv;
	}
	
	
}
