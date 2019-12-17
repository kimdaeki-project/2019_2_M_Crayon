package com.nuri.s5.dao;

import java.beans.Statement;
import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.nuri.s5.model.WishListVO;

@Repository
public class WishListDAO {
	
	@Inject
	private SqlSession sqlSession;
	private final static String NAMESPACE="wishListMapper.";
	
	public List<WishListVO> listShow(WishListVO wishListVO)throws Exception{
		return sqlSession.selectList(NAMESPACE+"listShow", wishListVO);
	}
	
	public int listInsert(WishListVO wishListVO) throws Exception{
		return sqlSession.insert(NAMESPACE+"listInsert", wishListVO);
	}
	
	public int listDelete(WishListVO wishListVO)throws Exception{
		return sqlSession.delete(NAMESPACE+"listDelete", wishListVO);
	}

}
