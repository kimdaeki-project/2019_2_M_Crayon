package com.nuri.s5.service;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import com.nuri.s5.dao.ReviewDAOImpl;
import com.nuri.s5.dao.ReviewFilesDAO;
import com.nuri.s5.model.ReviewFilesVO;
import com.nuri.s5.model.ReviewVO;
import com.nuri.s5.util.FileSaver;
import com.nuri.s5.util.Pager;

@Service
public class ReviewServiceImpl implements ReviewService {
	
	@Inject
	private ReviewDAOImpl reviewDAOImpl;
	
	@Inject
	private FileSaver fs;
	
	
	@Inject
	private ReviewFilesDAO reviewFilesDAO;
	
	
	
///////////////////////	review File ///////////////////////////////
	public int fileWrite(ReviewFilesVO reviewFilesVO) throws Exception{
		return reviewFilesDAO.fileWite(reviewFilesVO);
	}
	
///////////////////////	review 게시판 ///////////////////////////////

	@Override
	public List<ReviewVO> reviewList(Pager pager) throws Exception {
		pager.makeRow();
		pager.makePage(reviewDAOImpl.reviewCount(pager));
		return reviewDAOImpl.reviewList(pager);
	}

	@Override
	public ReviewVO reviewSelect(ReviewVO reviewVO) throws Exception {
		reviewDAOImpl.countUpdate(reviewVO);
		return reviewDAOImpl.reviewSelect(reviewVO);
	}

	@Override
	public int reviewUpdate(ReviewVO reviewVO, MultipartFile [] file, HttpSession httpSession) throws Exception {
		
		String realPath = httpSession.getServletContext().getRealPath("resources/upload/review");
		int result = reviewDAOImpl.reviewUpdate(reviewVO);
		ReviewFilesVO reviewFilesVO = new ReviewFilesVO();
		
		for (MultipartFile multipartFile : file) {
			if(multipartFile.getOriginalFilename() != "") {
				String fileName = fs.fileSave(realPath, multipartFile);
				reviewFilesVO.setNum(reviewVO.getNum());
				reviewFilesVO.setFname(fileName);
				reviewFilesVO.setOname(multipartFile.getOriginalFilename());
				reviewFilesDAO.fileWite(reviewFilesVO);
			}
		}
		return reviewDAOImpl.reviewUpdate(reviewVO);
	}

	@Override
	public int reviewDelete(ReviewVO reviewVO) throws Exception {
		return reviewDAOImpl.reviewDelete(reviewVO);
	}
	
	@Override
	public int reviewWrite(ReviewVO reviewVO, MultipartFile [] file, HttpSession httpSession) throws Exception{
		
		// 1. 글쓰기 파일 첨부를 위한 설정 : realPath
		String realPath = httpSession.getServletContext().getRealPath("resources/upload/review");
		System.out.println(realPath);
		ReviewFilesVO reviewFilesVO = new ReviewFilesVO();
		int result = reviewDAOImpl.reviewWrite(reviewVO);
		
		for (MultipartFile multipartFile : file) {
			if(multipartFile.getOriginalFilename() != "") {
				String fileName = fs.fileSave(realPath, multipartFile);
				reviewFilesVO.setNum(reviewVO.getNum());
				reviewFilesVO.setFname(fileName);
				reviewFilesVO.setOname(multipartFile.getOriginalFilename());
				reviewFilesDAO.fileWite(reviewFilesVO);
			}
		}
		return result;
	}

	@Override
	public int countUpdate(ReviewVO reviewVO) throws Exception {
		return reviewDAOImpl.countUpdate(reviewVO);
	}

}
