package com.nuri.s5.dao;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.nuri.s5.model.ReviewFilesVO;

@Repository
public class ReviewFilesDAO {
	
	@Inject
	private SqlSession sqlSession;
	private final static String NAMESPACE="reviewFilesMapper.";
	
	public int fileWite(ReviewFilesVO reviewFilesVO)throws Exception {
		return sqlSession.insert(NAMESPACE+"fileWrite", reviewFilesVO);
	}
}
