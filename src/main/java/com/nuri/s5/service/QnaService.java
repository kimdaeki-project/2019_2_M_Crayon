package com.nuri.s5.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.nuri.s5.dao.QnaDAO;
import com.nuri.s5.model.QnaVO;

@Service
public class QnaService {
	@Inject
	private QnaDAO qnaDAO;
	
	public List<QnaVO> qnaList(QnaVO qnaVO) throws Exception{
		return qnaDAO.qnaList(qnaVO);
	}
}
