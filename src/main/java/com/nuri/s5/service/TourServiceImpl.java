package com.nuri.s5.service;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.nuri.s5.dao.TourDAOImpl;
import com.nuri.s5.dao.TourFilesDAO;
import com.nuri.s5.model.TourCalendarVO;
import com.nuri.s5.model.TourFilesVO;
import com.nuri.s5.model.TourNoticeVO;
import com.nuri.s5.util.FileSaver;

@Service
public class TourServiceImpl implements TourService {

	@Inject
	private TourDAOImpl tourDAOImpl; 
	
	@Inject
	private TourFilesDAO tourFilesDAO;
	
	@Inject
	private FileSaver fs;
	
///////////////////////	tour File ///////////////////////////////
	public int fileWrite(TourFilesVO tourFilesVO) throws Exception{
		return tourFilesDAO.fileWite(tourFilesVO);
	}

///////////////////////	tour 게시판 ///////////////////////////////	
	
	@Override
	public int tourWrite(TourNoticeVO tourNoticeVO, MultipartFile[] file, HttpSession session, String [] time, String [] timeTable) throws Exception {
		
		String realPath = session.getServletContext().getRealPath("resources/upload/tour");
		System.out.println(realPath);
		TourFilesVO tourFilesVO = new TourFilesVO();
		int result = tourDAOImpl.tourWrite(tourNoticeVO);
		
		for (int i=0; i<file.length;i++) {
			if(file[i].getOriginalFilename() != "") {
				String fileName = fs.fileSave(realPath, file[i]);
				tourFilesVO.setNum(tourNoticeVO.getNum());
				tourFilesVO.setFname(fileName);
				tourFilesVO.setOname(file[i].getOriginalFilename());
				tourFilesVO.setTime(time[i]);
				tourFilesVO.setTimeTable(timeTable[i]);
				tourFilesDAO.fileWite(tourFilesVO);
			}
		}
		
		return result;
	}

	@Override
	public TourNoticeVO tourSelect(TourNoticeVO tourNoticeVO) throws Exception {
		return tourDAOImpl.tourSelect(tourNoticeVO);
	}

	@Override
	public List<TourCalendarVO> tourList(TourCalendarVO tourCalendarVO) throws Exception {
		return tourDAOImpl.tourList(tourCalendarVO);
	}

	@Override
	public int tourUpdate(TourNoticeVO tourNoticeVO, MultipartFile[] file, HttpSession session) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int tourDelete(TourNoticeVO tourNoticeVO) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}

}