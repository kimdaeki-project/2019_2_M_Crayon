package com.nuri.s5.controller;

import java.text.NumberFormat;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.nuri.s5.model.MemberVO;
import com.nuri.s5.model.ReservationVO;
import com.nuri.s5.model.TourCalendarVO;
import com.nuri.s5.model.TourFilesVO;
import com.nuri.s5.model.TourNoticeVO;
import com.nuri.s5.model.TourVO;
import com.nuri.s5.service.TourCalendarServiceImpl;
import com.nuri.s5.service.TourServiceImpl;
import com.nuri.s5.util.Pager;

@Controller
@RequestMapping("/tour/**")
public class TourController {

	
	@Inject
	private TourServiceImpl tourServiceImpl;
	@Inject
	private TourCalendarServiceImpl tourCalendarServiceImpl;
	
	/* tourCalendar 예약폼*/
	@GetMapping(value = "ReservationResult")
	public ModelAndView ReservationResult(ReservationVO reservationVO)throws Exception{
	ModelAndView mv = new ModelAndView();
	List<ReservationVO> ar = tourServiceImpl.ReservationResult(reservationVO);
	mv.addObject("list", ar);
	mv.setViewName("tour/ReservationResult");
	return mv;
	}


	@GetMapping(value = "Reservation")
	public void Reservation(ReservationVO reservationVO) throws Exception {
		
	}
	
	@PostMapping(value = "Reservation")
	public ModelAndView Reservation(TourCalendarVO tourCalendarVO,ReservationVO reservationVO,HttpSession session) throws Exception{
		
		ModelAndView mv = new ModelAndView();
		
		reservationVO.setTourNum(tourCalendarVO.getTourNum());
		
		int result = tourServiceImpl.Reservation(reservationVO, session);
		System.out.println(result);
		mv.addObject("dto", reservationVO);
		String msg = "Fail";
		if (result > 0) {
			msg = "Success";
		}
		mv.addObject("msg", msg);
		mv.addObject("path", "tour/tourList");
		mv.setViewName("common/common_result");
		return mv;
	}
	
	@GetMapping(value = "ReservationDelete")
	public ModelAndView ReservationDelete (ReservationVO reservationVO) throws Exception{
		int result = tourServiceImpl.ReservationDelete(reservationVO);
		String msg = "Fail";

		ModelAndView mv = new ModelAndView();
		if (result > 0) {
			msg = "Success";
		}

		mv.addObject("msg", msg);
		mv.addObject("path", "../");
		mv.setViewName("common/common_result");
		return mv;
		
	}
	
	
	@GetMapping(value = "ReservationList")
	public ModelAndView reservationList(ReservationVO reservationVO)throws Exception{
		ModelAndView mv = new ModelAndView();
		List<ReservationVO> ar = tourServiceImpl.ReservationList(reservationVO);
		mv.addObject("list", ar);
		mv.setViewName("tour/ReservationList");
		return mv;
	}
	
	

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
	
	@GetMapping(value = "tourDelete")
	public ModelAndView tourDelete(TourNoticeVO tourNoticeVO)throws Exception{
		ModelAndView mv = new ModelAndView();
		int result = tourServiceImpl.tourDelete(tourNoticeVO);
		if(result > 0) {
			mv.setViewName("common/common_result");
			mv.addObject("msg", "삭제 성공");
			mv.addObject("path", "../member/adminPage");
		}else {
			mv.setViewName("common/common_result");
			mv.addObject("msg", "삭제 실패");
			mv.addObject("path", "../member/adminPage");
		}
		return mv;
	}
	
	@GetMapping(value = "tourUpdate")
	public ModelAndView tourUpdate(TourNoticeVO tourNoticeVO)throws Exception{
		ModelAndView mv = new ModelAndView();
		tourNoticeVO = tourServiceImpl.tourSelect(tourNoticeVO);
		mv.addObject("dto", tourNoticeVO);
		
		return mv;
	}
	
	@PostMapping(value = "tourUpdate")
	public ModelAndView tourUpdate(TourNoticeVO tourNoticeVO, HttpSession session, MultipartFile [] file, String [] time, String [] timeTable)throws Exception{
		ModelAndView mv = new ModelAndView();
		tourNoticeVO.setCompared(tourNoticeVO.getCompared().replace("\r\n", "<br>"));
		tourNoticeVO.setInclude(tourNoticeVO.getInclude().replace("\r\n", "<br>"));
		tourNoticeVO.setExclude(tourNoticeVO.getExclude().replace("\r\n", "<br>"));
		tourNoticeVO.setAlert(tourNoticeVO.getAlert().replace("\r\n", "<br>"));
		tourNoticeVO.setPrepared(tourNoticeVO.getPrepared().replace("\r\n", "<br>"));
		tourNoticeVO.setAttention(tourNoticeVO.getAttention().replace("\r\n", "<br>"));
		tourNoticeVO.setRefund(tourNoticeVO.getRefund().replace("\r\n", "<br>"));
		tourNoticeVO.setYouTube(tourNoticeVO.getYouTube().replace("\r\n", "<br>"));
		int result = tourServiceImpl.tourUpdate(tourNoticeVO, file, session, time, timeTable);
		mv.addObject("dto", tourNoticeVO);
		
		if(result > 0) {
			mv.setViewName("common/common_result");
			mv.addObject("msg", "업데이트 성공");
			mv.addObject("path", "./tourUpdate");
		}else {
			mv.setViewName("common/common_result");
			mv.addObject("msg", "업데이트 실패");
			mv.addObject("path", "../");
		}
		return mv;
	}
	
	
	@GetMapping(value = "tourList")
	public ModelAndView tourList(TourVO tourVO)throws Exception{
		ModelAndView mv = new ModelAndView();
		List<TourVO> ar = tourServiceImpl.tourList(tourVO);
//		tourFilesVO.setNum(ar.get(0).gettNum());
//		List<TourFilesVO> list = tourServiceImpl.fileSelect(tourFilesVO);
		mv.addObject("list", ar);
		mv.setViewName("tour/tourList");
		return mv;
	} 
	

	
	
	@GetMapping(value = "tourGoods")
	public ModelAndView tourSelect(TourNoticeVO tourNoticeVO, TourCalendarVO tourCalendarVO, TourFilesVO tourFilesVO) throws Exception{
		ModelAndView mv = new ModelAndView();
		tourCalendarVO = tourCalendarServiceImpl.calendarSelect(tourCalendarVO);
		tourNoticeVO.setTourNum(tourCalendarVO.getTourNum());
		tourNoticeVO = tourServiceImpl.tourSelect(tourNoticeVO);
		tourFilesVO.setNum(tourNoticeVO.getNum());
		List<TourFilesVO> ar = tourServiceImpl.fileSelect(tourFilesVO);
//		tourCalendarVO.setTourNum(tourNoticeVO.getTourNum());
		mv.addObject("files", ar);
		mv.addObject("dto", tourNoticeVO);
		mv.addObject("dto2", tourCalendarVO);
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
		tourNoticeVO.setCompared(tourNoticeVO.getCompared().replace("\r\n", "<br>"));
		tourNoticeVO.setInclude(tourNoticeVO.getInclude().replace("\r\n", "<br>"));
		tourNoticeVO.setExclude(tourNoticeVO.getExclude().replace("\r\n", "<br>"));
		tourNoticeVO.setAlert(tourNoticeVO.getAlert().replace("\r\n", "<br>"));
		tourNoticeVO.setPrepared(tourNoticeVO.getPrepared().replace("\r\n", "<br>"));
		tourNoticeVO.setAttention(tourNoticeVO.getAttention().replace("\r\n", "<br>"));
		tourNoticeVO.setRefund(tourNoticeVO.getRefund().replace("\r\n", "<br>"));
		int result = tourServiceImpl.tourWrite(tourNoticeVO, file, session, time, timeTable);
		mv.addObject("dto", tourNoticeVO);
		if(result>0) {
			mv.setViewName("redirect:./tourList");
		}
		return mv;
	}
	
	
	@GetMapping(value = "tourCal")
	public void tourCal() throws Exception {

	}
	
	@GetMapping(value = "realCal")
	public void realCal() throws Exception {

	}
	
	@GetMapping(value = "tourVIP")
	   public void tourVIP() throws Exception {

	   }
	
	
	

}
