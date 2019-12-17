package com.nuri.s5.model;

import java.util.List;

public class WishListVO {
	
	private int Num;
	private int tourNum;
	private String email;
	private int tNum;
	private String tourName;
	private int price;
	private List<TourFilesVO> files;
	
	
	
	public int gettNum() {
		return tNum;
	}
	public void settNum(int tNum) {
		this.tNum = tNum;
	}
	public List<TourFilesVO> getFiles() {
		return files;
	}
	public void setFiles(List<TourFilesVO> files) {
		this.files = files;
	}
	public String getTourName() {
		return tourName;
	}
	public void setTourName(String tourName) {
		this.tourName = tourName;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public int getNum() {
		return Num;
	}
	public void setNum(int num) {
		Num = num;
	}
	public int getTourNum() {
		return tourNum;
	}
	public void setTourNum(int tourNum) {
		this.tourNum = tourNum;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
	

}
