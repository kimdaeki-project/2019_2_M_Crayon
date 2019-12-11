package com.nuri.s5.controller;



import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.nuri.s5.model.MemberVO;
import com.nuri.s5.model.TourFilesVO;
import com.nuri.s5.model.TourNoticeVO;
import com.nuri.s5.service.TourServiceImpl;


@Controller
@RequestMapping("/tour/**")
public class TourController {
	
	private TourServiceImpl tourServiceImpl;
	
/////////////////////////// tour file ///////////////////////////////////
	@GetMapping(value = "fileWrite")
	public ModelAndView fileWrite(TourFilesVO tourFilesVO) throws Exception{
		ModelAndView mv = new ModelAndView();
		int result = tourServiceImpl.fileWrite(tourFilesVO);
		mv.addObject("result", result);
		mv.setViewName("common/common_ajaxResult");
		return mv;
	}
/////////////////////////// tour admin ///////////////////////////////////
	
	@GetMapping(value = "tourWrite")
	public ModelAndView tourWrite(HttpSession session) throws Exception{
		ModelAndView mv = new ModelAndView();
		MemberVO member = (MemberVO)session.getAttribute("member");
		mv.addObject("member", member);
		return mv;
	}
	
	@PostMapping(value = "tourWrite")
	public ModelAndView tourWrite(TourNoticeVO tourNoticeVO, MultipartFile [] file, HttpSession session) throws Exception{
		ModelAndView mv = new ModelAndView();
		int result = tourServiceImpl.tourWrite(tourNoticeVO, file, session);
		mv.addObject("dto", tourNoticeVO);
		if(result>0) {
			mv.setViewName("redirect:./tourGoods");
		}else {
			
		}
		return mv;
	}
	
	
	@GetMapping(value = "tourCal")
	public void tourCal() throws Exception {

	}
	
	@GetMapping(value = "realCal")
	public void realCal() throws Exception {

	}
	
	@GetMapping(value = "tourGoods")
	public void tourGoods(Model model) throws Exception {
		

	}
	
}
