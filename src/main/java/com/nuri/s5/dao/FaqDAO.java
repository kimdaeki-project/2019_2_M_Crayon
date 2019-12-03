package com.nuri.s5.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.nuri.s5.model.FaqVO;

@Repository
public class FaqDAO {

	@Inject
	private SqlSession sqlSession;
	private final static String NAMESPACE="faqMapper.";
	
	public int faqInsert(FaqVO faqVO) throws Exception{
		return sqlSession.insert(NAMESPACE+"faqInsert", faqVO);
	}
	
	public List<FaqVO> faqList(FaqVO faqVO) throws Exception{
		return sqlSession.selectList(NAMESPACE+"faqList",faqVO);
	}
}
