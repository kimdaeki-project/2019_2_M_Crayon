package com.nuri.s5.dao;

import com.nuri.s5.model.TourNoticeVO;

public interface TourDAO {
	
	public int tourWrite(TourNoticeVO tourNoticeVO)throws Exception;
	
}
