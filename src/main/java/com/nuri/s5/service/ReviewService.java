package com.nuri.s5.service;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.web.multipart.MultipartFile;

import com.nuri.s5.model.ReviewVO;
import com.nuri.s5.util.Pager;

public interface ReviewService {
	
	public List<ReviewVO> reviewList(Pager pager)throws Exception;
	
	public ReviewVO reviewSelect(ReviewVO reviewVO)throws Exception;
	
	public int reviewUpdate(ReviewVO reviewVO, MultipartFile [] file, HttpSession httpSession)throws Exception;
	
	public int reviewDelete(ReviewVO reviewVO)throws Exception;
	
	public int reviewWrite(ReviewVO reviewVO, MultipartFile [] file, HttpSession httpSession)throws Exception;
	
	public int countUpdate(ReviewVO reviewVO)throws Exception;

	public ReviewVO reviewBest(ReviewVO reviewVO)throws Exception;


}
