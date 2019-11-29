package com.nuri.s5.dao;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.web.multipart.MultipartFile;

import com.nuri.s5.model.ReviewVO;
import com.nuri.s5.util.Pager;

public interface ReviewDAO {
	
	public List<ReviewVO> reviewList(Pager pager)throws Exception;
	
	public ReviewVO reviewSelect(ReviewVO reviewVO)throws Exception;
	
	public int reviewUpdate(ReviewVO reviewVO)throws Exception;
	
	public int reviewDelete(ReviewVO reviewVO)throws Exception;
	
	public int reviewCount(Pager pager)throws Exception;
	
	public int reviewWrite(ReviewVO reviewVO)throws Exception;
	
	public int countUpdate(ReviewVO reviewVO)throws Exception;
}
