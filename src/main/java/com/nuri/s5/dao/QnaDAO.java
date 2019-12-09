package com.nuri.s5.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.nuri.s5.model.QnaVO;
import com.nuri.s5.util.Pager;

@Repository
public class QnaDAO {

	@Inject
	private SqlSession sqlSession;
	private final static String NAMESPACE="qnaMapper.";
	
	public int qnaUpdate(QnaVO qnaVO) throws Exception{
		return sqlSession.update(NAMESPACE+"qnaUpdate", qnaVO);
	}
	
	public int qnaDelete(QnaVO qnaVO) throws Exception{
		return sqlSession.update(NAMESPACE+"qnaDelete", qnaVO);
	}
	
	public QnaVO qnaSelect(QnaVO qnaVO) throws Exception{
		return sqlSession.selectOne(NAMESPACE+"qnaSelect", qnaVO);
	}
	
	public int qnaAnswer(QnaVO qnaVO)throws Exception {
		return sqlSession.insert(NAMESPACE+"qnaAnswer", qnaVO);
	}
	
	public int qnaQuestion(QnaVO qnaVO) throws Exception{
		return sqlSession.insert(NAMESPACE+"qnaQuestion", qnaVO);
	}
	
	public List<QnaVO> qnaList(Pager pager) throws Exception{
		return sqlSession.selectList(NAMESPACE+"qnaList",pager);
	}
	
	public int qnaCount(Pager pager) throws Exception{
		return sqlSession.selectOne(NAMESPACE+"qnaCount",pager);
	}
}
