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
		pager.setPerPage(10);
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
		
		/*
		 * //쿠키를 받아오기 Cookie [] cookies = request.getCookies(); //새 쿠키 생성 Cookie
		 * viewCookie =null; if(cookies != null && cookies.length>0) { for(int i =0;
		 * i<cookies.length; i++) {
		 * if(cookies[i].getName().equals("cookies"+reviewVO.getNum())){
		 * System.out.println("처음으로 쿠키가 생성된 뒤에 들어오는 곳 "); viewCookie = cookies[i]; } } }
		 * if(reviewVO != null) { System.out.println("리뷰 select 페이지로 넘어감");
		 * mv.addObject("review", reviewVO); }
		 * 
		 * //만약 viewCookie가 null인 경우 쿠키를 생성해서 조회수 증가를 처리 if(viewCookie == null) {
		 * System.out.println("cookie 없음 오예");
		 * 
		 * //쿠키 하나 생성(이름, 값) Cookie newCookie = new
		 * Cookie("cookie"+reviewVO.getNum(),reviewVO.getTourName());
		 * 
		 * //쿠키 추가 response.addCookie(newCookie); //쿠키 추가 및 조회수 증가 int result =
		 * reviewServiceImpl.countUpdate(reviewVO);
		 * 
		 * if(result>0) { System.out.println("조회수 증가"); }else{
		 * System.out.println("증가 되어야 하는데 안됨"); } } //viewCookie가 null이 아닐 경우 쿠키가 있으므로
		 * 조회수 증가 안함 else { System.out.println("쿠키 있음");
		 * 
		 * String value = viewCookie.getValue(); System.out.println("cookie값:"+ value);
		 * }
		 */
		
		mv.addObject("dto", reviewVO);
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
	
	@GetMapping(value = "reviewBest")
	public ModelAndView reviewBest(ReviewVO reviewVO)throws Exception{
		List<ReviewVO> ar = reviewServiceImpl.reviewPic(reviewVO);
		ModelAndView mv = new ModelAndView();
		
		mv.addObject("list", ar);
		mv.setViewName("review/reviewBest");
		return mv;
	}


}