package com.nuri.s5.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/intro/**")
public class CompanyController {

	@GetMapping(value = "company")
	public void company() throws Exception{
		
	}
}
