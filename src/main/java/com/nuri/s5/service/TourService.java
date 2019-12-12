package com.nuri.s5.service;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.web.multipart.MultipartFile;

import com.nuri.s5.model.TourNoticeVO;

public interface TourService {
	
	public int tourWrite(TourNoticeVO tourNoticeVO, MultipartFile [] file, HttpSession session)throws Exception;
	
	public TourNoticeVO tourSelect(TourNoticeVO tourNoticeVO)throws Exception;
	
	public List<TourNoticeVO> tourList(TourNoticeVO tourNoticeVO)throws Exception;
	
	public int tourUpdate(TourNoticeVO tourNoticeVO, MultipartFile [] file, HttpSession session)throws Exception;
	
	public int tourDelete(TourNoticeVO tourNoticeVO)throws Exception;
}
