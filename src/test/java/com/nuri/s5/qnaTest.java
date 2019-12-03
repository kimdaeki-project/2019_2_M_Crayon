package com.nuri.s5;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotNull;

import java.util.ArrayList;
import java.util.List;

import javax.inject.Inject;

import org.junit.Test;

import com.nuri.s5.dao.QnaDAO;
import com.nuri.s5.dao.ReviewDAOImpl;
import com.nuri.s5.model.QnaVO;
import com.nuri.s5.model.ReviewVO;
import com.nuri.s5.util.Pager;

public class qnaTest extends TestAbstractCase{

	@Inject
	private QnaDAO qnaDAO;
	
	@Test
	public void reviewListTest() throws Exception{
		List<QnaVO> ar = new ArrayList<QnaVO>();
		Pager pager = new Pager();
//		for(int i=0; i<ar.size();i++) {
//			ReviewVO reviewVO = new ReviewVO();
//			reviewVO.getNum();
//			reviewVO.getTitle();
//			reviewVO.getWriter();
//			reviewVO.getContents();
//			reviewVO.getDay();
//			ar.add(reviewVO);
//		}
		ar = qnaDAO.qnaList(pager);
		assertEquals(2, ar.size());
	}
	
	
}
