package com.nuri.s5.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.nuri.s5.dao.FaqDAO;
import com.nuri.s5.model.FaqVO;

@Service
public class FaqService {
	@Inject
	private FaqDAO faqDAO;
	
	public List<FaqVO> faqList(FaqVO faqVO) throws Exception{
		return faqDAO.faqList(faqVO);
	}
}
