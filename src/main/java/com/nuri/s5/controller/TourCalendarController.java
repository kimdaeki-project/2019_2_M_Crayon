package com.nuri.s5.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.nuri.s5.model.TourCalendarVO;

@Controller
@RequestMapping("/TourCal/**")
public class TourCalendarController {

	
	
	@GetMapping(value = "calcal")
	public String calcal(TourCalendarVO tourCalendarVO,Model model) throws Exception {
		model.addAttribute("dto", tourCalendarVO);
		return "TourCal/calcal";
	}
	
	@GetMapping(value = "Reservation")
	public void Reservation() throws Exception {
		
	}
	
	
	
	
}
