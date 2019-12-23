package com.nuri.s5.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.nuri.s5.service.KakaoPay;
import com.nuri.s5.service.VkakaoPay;

 
@Controller
@RequestMapping("/pay/**")
public class KakaoPayController {
	
	@Autowired
	private KakaoPay kakaopay;
	@Autowired
    private VkakaoPay vkakaopay;
    
    @GetMapping("/kakaoPay")
    public void kakaoPayGet() {
        
    }
    
    @PostMapping("/kakaoPay")
    public String kakaoPay(String tourName, int totalPrice, int reNum, int personNum) {
        return "redirect:" + kakaopay.kakaoPayReady(tourName, totalPrice, reNum, personNum);
 
    }
    
    @GetMapping("/kakaoPaySuccess")
    public void kakaoPaySuccess(@RequestParam("pg_token") String pg_token, Model model) {
        model.addAttribute("info", kakaopay.kakaoPayInfo(pg_token));
    }
    
    
    
//   -------- vip ---------
    
    @GetMapping("/vkakaoPay")
    public void vkakaoPayGet() {
        
    }
    
    @PostMapping("/vkakaoPay")
    public String vkakaoPay(int vprice, int vipno) {
        return "redirect:" + vkakaopay.kakaoPayReady(vprice, vipno);
 
    }
    
    @GetMapping("/vkakaoPaySuccess")
    public void vkakaoPaySuccess(@RequestParam("pg_token") String pg_token, Model model) {
        model.addAttribute("info", vkakaopay.kakaoPayInfo(pg_token));
    }
    
    
}