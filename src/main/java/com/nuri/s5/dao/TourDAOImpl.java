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
	public List<ReservationVO> ReservationList(ReservationVO reservationVO)throws Exception{
		return sqlSession.selectList(NAMESPACE+"ReservationList", reservationVO);
	}


	@Override
	public int tourUpdate(TourNoticeVO tourNoticeVO) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}


	@Override
	public int tourDelete(TourNoticeVO tourNoticeVO) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}
	
	@Override
	public int ReservationDelete(ReservationVO reservationVO)throws Exception{
		return sqlSession.delete(NAMESPACE+"ReservationDelete", reservationVO);
	}
	
	@Override
	public List<ReservationVO> ReservationResult(ReservationVO reservationVO)throws Exception{
		return sqlSession.selectList(NAMESPACE+"ReservationResult",reservationVO);
	}
	



}
