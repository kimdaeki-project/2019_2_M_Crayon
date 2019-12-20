package com.nuri.s5.dao;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.web.multipart.MultipartFile;

import com.nuri.s5.model.ReservationVO;
import com.nuri.s5.model.TourCalendarVO;
import com.nuri.s5.model.TourNoticeVO;
import com.nuri.s5.model.TourVO;

import com.nuri.s5.model.VReservationVO;

import com.nuri.s5.util.Pager;


public interface TourDAO {
	
	public int tourWrite(TourNoticeVO tourNoticeVO)throws Exception;
	
	public TourNoticeVO tourSelect(TourNoticeVO tourNoticeVO)throws Exception;
	
	public List<TourVO> tourList(TourVO tourVO)throws Exception;
	
	public int tourUpdate(TourNoticeVO tourNoticeVO)throws Exception;
	
	public int tourDelete(TourNoticeVO tourNoticeVO)throws Exception;
	
	public int Reservation(ReservationVO reservationVO)throws Exception;
	
	
	//예약
	public List<ReservationVO> ReservationList(ReservationVO reservationVO)throws Exception;
	
	public int ReservationDelete(ReservationVO reservationVO)throws Exception;
	
	public List<ReservationVO> ReservationResult(ReservationVO reservationVO)throws Exception;
	
	public List<ReservationVO> ReservationListMy(ReservationVO reservationVO)throws Exception;
	
	//맞춤투어 예약
	public int vReservation(VReservationVO vReservationVO)throws Exception;
	
	public List<VReservationVO> vReservationMy(VReservationVO vReservationVO)throws Exception;
	
	public int VReservationDelete(VReservationVO vReservationVO)throws Exception;
	
	
	

}
