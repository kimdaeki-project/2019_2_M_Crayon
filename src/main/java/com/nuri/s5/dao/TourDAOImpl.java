package com.nuri.s5.dao;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;
import org.springframework.web.multipart.MultipartFile;

import com.nuri.s5.model.ReservationVO;
import com.nuri.s5.model.TourCalendarVO;
import com.nuri.s5.model.TourNoticeVO;
import com.nuri.s5.model.TourVO;

import com.nuri.s5.model.VReservationVO;
import com.nuri.s5.util.Pager;

import com.nuri.s5.util.Pager;


@Repository
public class TourDAOImpl implements TourDAO {

	@Inject
	private SqlSession sqlSession;
	private final static String NAMESPACE = "tourMapper.";
	

	@Override
	public int tourWrite(TourNoticeVO tourNoticeVO) throws Exception {
		return sqlSession.insert(NAMESPACE+"tourWrite", tourNoticeVO);
	}


	@Override
	public TourNoticeVO tourSelect(TourNoticeVO tourNoticeVO) throws Exception {
		return sqlSession.selectOne(NAMESPACE+"tourSelect", tourNoticeVO);
	}


	@Override
	public List<TourVO> tourList(TourVO tourVO) throws Exception {
		return sqlSession.selectList(NAMESPACE+"tourList", tourVO);
	}
	
	
	@Override
	public int Reservation(ReservationVO reservationVO)throws Exception{
		return sqlSession.insert(NAMESPACE+"Reservation", reservationVO);
	}
	
	@Override
	public List<ReservationVO> ReservationList(Pager pager)throws Exception{
		return sqlSession.selectList(NAMESPACE+"ReservationList", pager);
	}


	@Override
	public int tourUpdate(TourNoticeVO tourNoticeVO) throws Exception {
		return sqlSession.update(NAMESPACE+"tourUpdate", tourNoticeVO);
	}


	@Override
	public int tourDelete(TourNoticeVO tourNoticeVO) throws Exception {
		return sqlSession.delete(NAMESPACE+"tourDelete", tourNoticeVO);
	}
	
	@Override
	public int ReservationDelete(ReservationVO reservationVO)throws Exception{
		return sqlSession.delete(NAMESPACE+"ReservationDelete", reservationVO);
	}
	
	@Override
	public List<ReservationVO> ReservationResult(ReservationVO reservationVO)throws Exception{
		return sqlSession.selectList(NAMESPACE+"ReservationResult",reservationVO);
	}
	
	@Override
	public List<ReservationVO> ReservationListMy(ReservationVO reservationVO)throws Exception{
		return sqlSession.selectList(NAMESPACE+"ReservationListMy",reservationVO);
	}

	@Override
	public int vReservation(VReservationVO vReservationVO) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.insert(NAMESPACE+"VReservation",vReservationVO);
	}
	@Override
	public List<VReservationVO> vReservationMy(VReservationVO vReservationVO)throws Exception{
		return sqlSession.selectList(NAMESPACE+"VReservationMy", vReservationVO);
	}


	@Override
	public List<VReservationVO> vReservationList(VReservationVO vReservationVO,Pager pager) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectList(NAMESPACE+"VReservationList",pager);
	}

	
	//admin에서 예약승인으로 변경, 금액 변경
	@Override
	public int vReservationUpdate1(VReservationVO vReservationVO) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.update(NAMESPACE+"VReservationUpdate1",vReservationVO);
	}


	@Override
	public int ReservationCount(Pager pager) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(NAMESPACE+"ReservationCount",pager);
	}
	
	public int VReservationCount(Pager pager) throws Exception{
		return sqlSession.selectOne(NAMESPACE+"VReservationCount", pager);
	}
	@Override
	public int VReservationDelete(VReservationVO vReservationVO)throws Exception{
		return sqlSession.delete(NAMESPACE+"VReservationDelete", vReservationVO);
	}


	@Override
	public int ReservationCount() throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(NAMESPACE+"ReservationCount");
	}


	@Override
	public int VReservationCount() throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(NAMESPACE+"VReservationCount");
	}


	@Override
	public int rprice() throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(NAMESPACE+"rPrice");
	}


	@Override
	public int vprice() throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(NAMESPACE+"vPrice");
	}



}
