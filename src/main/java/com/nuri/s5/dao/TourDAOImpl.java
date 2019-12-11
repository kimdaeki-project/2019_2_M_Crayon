package com.nuri.s5.dao;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.nuri.s5.model.TourNoticeVO;

@Repository
public class TourDAOImpl implements TourDAO {

	@Inject
	private SqlSession sqlSession;
	private final static String NAMESPACE = "tourMapper.";
	
	@Override
	public int tourWrite(TourNoticeVO tourNoticeVO) throws Exception {
		return sqlSession.insert(NAMESPACE+"tourWrite", tourNoticeVO);
	}

}
