package com.nuri.s5.model;

public class VReservationVO {
	private int vipno;
	private String name;
	private String email;
	private String kakaoID;
	private String content;
	private String vday;
	private int vprice;
	private String tourEmail;
	
	public String getTourEmail() {
		return tourEmail;
	}
	public void setTourEmail(String tourEmail) {
		this.tourEmail = tourEmail;
	}
	public int getVipno() {
		return vipno;
	}
	public void setVipno(int vipno) {
		this.vipno = vipno;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getKakaoID() {
		return kakaoID;
	}
	public void setKakaoID(String kakaoID) {
		this.kakaoID = kakaoID;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getVday() {
		return vday;
	}
	public void setVday(String vday) {
		this.vday = vday;
	}
	public int getVprice() {
		return vprice;
	}
	public void setVprice(int vprice) {
		this.vprice = vprice;
	}
	
	
	
}
