package com.nuri.s5;

import static org.junit.Assert.*;

import javax.inject.Inject;

import org.junit.Test;

import com.nuri.s5.dao.TourDAOImpl;
import com.nuri.s5.model.MemberVO;
import com.nuri.s5.model.ReservationVO;

public class TourDAOTest extends TestAbstractCase{

	@Inject
	private TourDAOImpl tourDAOImpl;
	
	
	@Test
		public void Reservation()throws Exception {
			ReservationVO reservationVO = new ReservationVO();
			
			reservationVO.setDay("2019-12-30");
			reservationVO.setEmail("tt");
			reservationVO.setKakaoID("tt");
			reservationVO.setName("tt");
			reservationVO.setPersonNum(3);
			reservationVO.setPhone("010-1111-1234");
			reservationVO.setPs("tttttt");
			reservationVO.setTotalPrice(90000);
			reservationVO.setTourName("몽생미셸투어");
			reservationVO.setTourNum(1);
			
			int result = tourDAOImpl.Reservation(reservationVO);
			assertEquals(1, result);
		}

}
