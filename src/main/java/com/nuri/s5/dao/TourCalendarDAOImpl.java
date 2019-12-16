package com.nuri.s5.dao;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.nuri.s5.model.TourCalendarVO;

@Repository
public class TourCalendarDAOImpl implements TourCalendarDAO {

	@Inject
	private SqlSession sqlSession;
	private final static String NAMESPACE = "tourCalendarMapper.";
	
	
	@Override
	public TourCalendarVO tourSelect(TourCalendarVO tourCalendarVO) throws Exception {
		return sqlSession.selectOne(NAMESPACE+"calendarSelect", tourCalendarVO);
	}



}
