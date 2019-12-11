package com.nuri.s5.controller;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.nuri.s5.dao.ReviewDAOImpl;
import com.nuri.s5.model.ReviewVO;
import com.nuri.s5.util.Pager;

@Controller
@RequestMapping("/tour/**")
public class TourController {

	@GetMapping(value = "tourCal")
	public void tourCal() throws Exception {

	}
	
	@GetMapping(value = "realCal")
	public void realCal() throws Exception {

	}
	
	@GetMapping(value = "tourGoods")
	public void tourGoods() throws Exception {

	}
	
}
