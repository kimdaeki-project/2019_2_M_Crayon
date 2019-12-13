package com.nuri.s5.controller;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
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
	
	@Inject
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
	
	@GetMapping(value = "tourList")
	public ModelAndView tourList(TourNoticeVO tourNoticeVO)throws Exception{
		ModelAndView mv = new ModelAndView();
		List<TourNoticeVO> ar = tourServiceImpl.tourList(tourNoticeVO);
		mv.addObject("list", ar);
		mv.setViewName("tour/tourList");
		return mv;
	} 
	
	
	@GetMapping(value = "tourGoods")
	public ModelAndView tourSelect(TourNoticeVO tourNoticeVO) throws Exception{
		ModelAndView mv = new ModelAndView();
		tourNoticeVO = tourServiceImpl.tourSelect(tourNoticeVO);
		mv.addObject("dto", tourNoticeVO);
		mv.setViewName("tour/tourGoods");
		return mv;
	}
	
	
	@GetMapping(value = "tourWrite")
	public ModelAndView tourWrite(HttpSession session) throws Exception{
		ModelAndView mv = new ModelAndView();
//		MemberVO member = (MemberVO)session.getAttribute("member");
//		mv.addObject("member", member);
		return mv;
	}
	
	@PostMapping(value = "tourWrite")
	public ModelAndView tourWrite(TourNoticeVO tourNoticeVO, MultipartFile [] file, HttpSession session, String [] time, String [] timeTable) throws Exception{
		ModelAndView mv = new ModelAndView();
		int result = tourServiceImpl.tourWrite(tourNoticeVO, file, session,time,timeTable);
		mv.addObject("dto", tourNoticeVO);
		if(result>0) {
			mv.setViewName("redirect:./tourList");
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
	
}
