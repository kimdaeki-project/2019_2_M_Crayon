package com.nuri.s5.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.nuri.s5.dao.QnaDAO;
import com.nuri.s5.model.QnaVO;
import com.nuri.s5.util.Pager;

@Service
public class QnaService {
	@Inject
	private QnaDAO qnaDAO;
	
	public List<QnaVO> qnaList(Pager pager) throws Exception{
		pager.makeRow();
		pager.makePage(qnaDAO.qnaCount(pager));
		return qnaDAO.qnaList(pager);
	}
	
	public int qnaQuestion(QnaVO qnaVO) throws Exception{
		return qnaDAO.qnaQuestion(qnaVO);
	}
	
	public int qnaAnswer(QnaVO qnaVO) throws Exception{
		return qnaDAO.qnaAnswer(qnaVO);
	}
	
	public int qnaUpdate(QnaVO qnaVO)throws Exception {
		return qnaDAO.qnaUpdate(qnaVO);
	}
	
	public QnaVO qnaSelet(QnaVO qnaVO) throws Exception{
		return qnaDAO.qnaSelect(qnaVO);
	}
	
	public int qnaDelete(QnaVO qnaVO) throws Exception{
		return qnaDAO.qnaDelete(qnaVO);
	}
	
	
	
}
