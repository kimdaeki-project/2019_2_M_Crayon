package com.nuri.s5.service;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.web.multipart.MultipartFile;

import com.nuri.s5.model.ReservationVO;
import com.nuri.s5.model.TourCalendarVO;
import com.nuri.s5.model.TourNoticeVO;
import com.nuri.s5.model.TourVO;

import com.nuri.s5.model.VReservationVO;
import com.nuri.s5.util.Pager;

import com.nuri.s5.util.Pager;


public interface TourService {
	
	public int tourWrite(TourNoticeVO tourNoticeVO, MultipartFile [] file, HttpSession session, String [] time, String [] timeTable)throws Exception;
	
	public TourNoticeVO tourSelect(TourNoticeVO tourNoticeVO)throws Exception;
	
	public List<TourVO> tourList(TourVO tourVO)throws Exception;
	
	public int tourUpdate(TourNoticeVO tourNoticeVO, MultipartFile [] file, HttpSession session, String [] time, String [] timeTable)throws Exception;
	
	public int tourDelete(TourNoticeVO tourNoticeVO)throws Exception;
	
	public int Reservation(ReservationVO reservationVO,HttpSession session)throws Exception;
	
	public List<ReservationVO> ReservationList(Pager pager)throws Exception;
	
	public int ReservationDelete(ReservationVO reservationVO)throws Exception;
	
	public List<ReservationVO> ReservationResult(ReservationVO reservationVO)throws Exception;
	
	public int vReservation(VReservationVO vReservationVO,HttpSession session)throws Exception;
	
	public List<VReservationVO> vReservationMy(VReservationVO vReservationVO)throws Exception;

	public List<VReservationVO> vReservationList(VReservationVO vReservationVO,Pager pager)throws Exception;
	
	public int vReservationUpdate1(VReservationVO vReservationVO) throws Exception;
	
	public int VReservationDelete(VReservationVO vReservationVO)throws Exception;
	
	public int ReservationCount() throws Exception;
	public int VReservationCount() throws Exception;
	
	public int rprice() throws Exception;
	public int vprice() throws Exception;

}
