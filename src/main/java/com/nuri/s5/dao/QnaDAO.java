package com.nuri.s5.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.nuri.s5.model.QnaVO;

@Repository
public class QnaDAO {

	@Inject
	private SqlSession sqlSession;
	private final static String NAMESPACE="qnaMapper.";
	
	public int qnaInsert(QnaVO qnaVO) throws Exception{
		return sqlSession.insert(NAMESPACE+"qnaInsert", qnaVO);
	}
	
	public List<QnaVO> qnaList(QnaVO qnaVO) throws Exception{
		return sqlSession.selectList(NAMESPACE+"qnaList",qnaVO);
	}
}