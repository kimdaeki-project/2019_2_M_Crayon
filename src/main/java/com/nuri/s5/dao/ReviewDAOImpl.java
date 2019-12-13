package com.nuri.s5.dao;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;
import org.springframework.web.multipart.MultipartFile;

import com.nuri.s5.model.ReviewVO;
import com.nuri.s5.util.Pager;

@Repository
public class ReviewDAOImpl implements ReviewDAO {
	
	@Inject
	private SqlSession sqlsession;
	private final static String NAMESPACE="reviewMapper.";
	
	@Override
	public int reviewCount(Pager pager) throws Exception{
		return sqlsession.selectOne(NAMESPACE+"reviewCount", pager);
	}

	@Override
	public List<ReviewVO> reviewList(Pager pager) throws Exception {
		return sqlsession.selectList(NAMESPACE+"reviewList", pager);
	}

	@Override
	public ReviewVO reviewSelect(ReviewVO reviewVO) throws Exception {
		return sqlsession.selectOne(NAMESPACE+"reviewSelect", reviewVO);
	}

	@Override
	public int reviewUpdate(ReviewVO reviewVO) throws Exception {
		return sqlsession.update(NAMESPACE+"reviewUpdate", reviewVO);
	}

	@Override
	public int reviewDelete(ReviewVO reviewVO) throws Exception {
		return sqlsession.delete(NAMESPACE+"reviewDelete", reviewVO);
	}
	
	@Override
	public int reviewWrite(ReviewVO reviewVO) throws Exception{
		return sqlsession.insert(NAMESPACE+"reviewWrite", reviewVO);
	}

	@Override
	public int countUpdate(ReviewVO reviewVO) throws Exception {
		return sqlsession.update(NAMESPACE+"countUpdate", reviewVO);
	}
	
	@Override
	public ReviewVO reviewBest(ReviewVO reviewVO)throws Exception{
		return sqlsession.selectOne(NAMESPACE+"reviewBest",reviewVO);
	}
	


}
