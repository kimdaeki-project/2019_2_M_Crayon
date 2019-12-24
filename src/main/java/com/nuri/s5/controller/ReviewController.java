package com.nuri.s5.controller;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.nuri.s5.model.MemberVO;
import com.nuri.s5.model.ReviewFilesVO;
import com.nuri.s5.model.ReviewVO;
import com.nuri.s5.service.ReviewServiceImpl;
import com.nuri.s5.util.Pager;

@Controller
@RequestMapping("/review/**")
public class ReviewController {
   
   @Inject
   private ReviewServiceImpl reviewServiceImpl;

	
	@GetMapping(value="reviewResult")
	public String reviewResult(Pager pager, Model model) throws Exception{
		pager.setPerPage(5);
		List<ReviewVO> ar = reviewServiceImpl.reviewList(pager);
		
		model.addAttribute("list", ar);
		
		return "review/reviewResult";
	}
	
	
	@GetMapping(value="tourReview")
	   public String tourReview(Pager pager, Model model) throws Exception{
	      pager.setPerPage(5);
	      List<ReviewVO> ar = reviewServiceImpl.reviewList(pager);
	      model.addAttribute("list", ar);
	      
	      return "review/tourReview";
	   }

	
	
	

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

	
	@GetMapping(value = "reviewPhoto")
	public void reviewPhoto() throws Exception{
		
	}
	
	@GetMapping(value = "reviewWrite")
	public ModelAndView reviewWrite(HttpSession session) throws Exception{
		ModelAndView mv = new ModelAndView();
		MemberVO member = (MemberVO)session.getAttribute("member");
		mv.addObject("member", member);
		return mv;
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
		
		String msg = "Fail";
		ModelAndView mv = new ModelAndView();
		if (result > 0) {
			msg = "Success";
		}

		mv.addObject("msg", msg);
		mv.addObject("path", "./");
		mv.setViewName("common/common_result");
		
		return "redirect:./reviewList";
	}
	
	@GetMapping(value = "reviewSelect")
	public ModelAndView reviewSelect(ReviewVO reviewVO,HttpServletRequest request,HttpServletResponse response) throws Exception {
		ModelAndView mv = new ModelAndView();
		
		reviewVO = reviewServiceImpl.reviewSelect(reviewVO);
		
		String go = "review/reviewSelect";
		if(reviewVO.getWriter()==null) {
			go="../error/common_400_error";
		}
		
		mv.addObject("dto", reviewVO);
		mv.setViewName(go);
		
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
	
	@GetMapping(value = "reviewBest")
	public ModelAndView reviewBest(ReviewVO reviewVO)throws Exception{
		List<ReviewVO> ar = reviewServiceImpl.reviewPic(reviewVO);
		ModelAndView mv = new ModelAndView();
		
		mv.addObject("list", ar);
		mv.setViewName("review/reviewBest");
		return mv;
	}


}