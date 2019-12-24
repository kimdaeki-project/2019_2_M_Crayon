package com.nuri.s5.controller;

import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.servlet.ModelAndView;

@ControllerAdvice
public class ExceptionController {

		@ResponseStatus(HttpStatus.NOT_FOUND)
		public ModelAndView getClient() {
			ModelAndView mv = new ModelAndView();
			mv.setViewName("error/common_400_error");
			
			return mv;
		}
		
		@ExceptionHandler(Exception.class)
		public ModelAndView getNull() {
			ModelAndView mv = new ModelAndView();
			mv.setViewName("error/common_400_error");
			return mv;
		}
	
}
