package com.nuri.s5.controller;

import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/tour/**")
public class TourController {

   @GetMapping(value = "tourVIP")
   public void tourCal() throws Exception {

   }
   
   @GetMapping(value = "tourGoods")
   public void tourGoods() throws Exception {

   }
   
}