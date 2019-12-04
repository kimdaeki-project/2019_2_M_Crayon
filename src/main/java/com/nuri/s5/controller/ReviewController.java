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

import com.nuri.s5.model.ReviewFilesVO;
import com.nuri.s5.model.ReviewVO;
import com.nuri.s5.service.ReviewServiceImpl;
import com.nuri.s5.util.Pager;

@Controller
@RequestMapping("/review/**")
public class ReviewController {
	
	@Inject
	private ReviewServiceImpl reviewServiceImpl;

	
/////////////////////////// review file ///////////////////////////////////
	@GetMapping(value = "fileWrite")
	public ModelAndView fileWrite(ReviewFilesVO reviewFilesVO) throws Exception{
		ModelAndView mv = new ModelAndView();
		int result = reviewServiceImpl.fileWrite(reviewFilesVO);
		mv.addObject("result", result);
		mv.setViewName("common/common_ajaxResult");
		return mv;
	}
	
	
/////////////////////////// review board ///////////////////////////////////
	
	@GetMapping(value = "reviewWrite")
	public void reviewWrite() throws Exception{
	}
	
	@PostMapping(value = "reviewWrite")
	public ModelAndView reviewWrite(ReviewVO reviewVO, MultipartFile [] file, HttpSession httpSession)throws Exception{
		ModelAndView mv = new ModelAndView();
		int result = reviewServiceImpl.reviewWrite(reviewVO, file, httpSession);
		mv.addObject("dto", reviewVO);
		if(result>0) {
			mv.setViewName("redirect:./reviewList");
		}else {
			
		}
		return mv;
	}
	
	
	@GetMapping(value = "reviewDelete")
	public String reviewDelete(ReviewVO reviewVO) throws Exception{
		int result = reviewServiceImpl.reviewDelete(reviewVO);
		return "redirect:./reviewList";
	}
	
	@GetMapping(value = "reviewSelect")
	public ModelAndView reviewSelect(ReviewVO reviewVO) throws Exception {
		ModelAndView mv = new ModelAndView();
		reviewVO = reviewServiceImpl.reviewSelect(reviewVO);
		mv.addObject("dto", reviewVO);
		int hit = reviewVO.getHit();	
		hit = hit+1;
		reviewVO.setHit(hit);
		int count = reviewServiceImpl.countUpdate(reviewVO);
		mv.setViewName("review/reviewSelect");
		return mv;
	}
	
	@GetMapping(value = "reviewList")
	public ModelAndView reviewList(Pager pager)throws Exception{
		List<ReviewVO> ar = reviewServiceImpl.reviewList(pager);
		ModelAndView mv = new ModelAndView();
		mv.addObject("list", ar);
		mv.addObject("pager", pager);
		mv.setViewName("review/reviewList");
		return mv;
	}
	

}
