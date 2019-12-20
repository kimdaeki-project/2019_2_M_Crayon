package com.nuri.s5.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.nuri.s5.service.KakaoPay;

 
@Controller
@RequestMapping("/pay/**")
public class KakaoPayController {
	
	@Autowired
	private KakaoPay kakaopay;
    
    
    @GetMapping("/kakaoPay")
    public void kakaoPayGet() {
        
    }
    
    @PostMapping("/kakaoPay")
    public String kakaoPay(String tourName, int totalPrice, int reNum) {
        
        return "redirect:" + kakaopay.kakaoPayReady(tourName, totalPrice, reNum);
 
    }
    
    @GetMapping("/kakaoPaySuccess")
    public void kakaoPaySuccess(@RequestParam("pg_token") String pg_token, Model model) {

        model.addAttribute("info", kakaopay.kakaoPayInfo(pg_token));
    }
    
}