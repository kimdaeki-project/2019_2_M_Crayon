package com.nuri.s5.service;

import javax.inject.Inject;
import javax.xml.ws.ServiceMode;

import org.springframework.stereotype.Service;

import com.nuri.s5.dao.TourCalendarDAOImpl;
import com.nuri.s5.model.TourCalendarVO;

@Service
public class TourCalendarServiceImpl implements TourCalendarService {

	@Inject
	private TourCalendarDAOImpl tourCalendarDAOImpl;
	
	@Override
	public TourCalendarVO calendarSelect(TourCalendarVO tourCalendarVO) throws Exception {
		return tourCalendarDAOImpl.tourSelect(tourCalendarVO); 
	}

}
