package com.nuri.s5.model;

import java.util.List;

public class TourVO {
	private int num;
	private String compared;
	private String include;
	private String exclude;
	private String alert;
	private String prepared;
	private String attention;
	private String refund;     
	private List<TourNoticeVO> files;
	private int tourNum;
	private int tNum;
	private String tourName;
	private int maxNum;
	private int price; 
	private int totalNum;
	private String youTube;
	
	public String getYouTube() {
		return youTube;
	}
	public void setYouTube(String youTube) {
		this.youTube = youTube;
	}
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public String getCompared() {
		return compared;
	}
	public void setCompared(String compared) {
		this.compared = compared;
	}
	public String getInclude() {
		return include;
	}
	public void setInclude(String include) {
		this.include = include;
	}
	public String getExclude() {
		return exclude;
	}
	public void setExclude(String exclude) {
		this.exclude = exclude;
	}
	public String getAlert() {
		return alert;
	}
	public void setAlert(String alert) {
		this.alert = alert;
	}
	public String getPrepared() {
		return prepared;
	}
	public void setPrepared(String prepared) {
		this.prepared = prepared;
	}
	public String getAttention() {
		return attention;
	}
	public void setAttention(String attention) {
		this.attention = attention;
	}
	public String getRefund() {
		return refund;
	}
	public void setRefund(String refund) {
		this.refund = refund;
	}
	public List<TourNoticeVO> getFiles() {
		return files;
	}
	public void setFiles(List<TourNoticeVO> files) {
		this.files = files;
	}
	public int getTourNum() {
		return tourNum;
	}
	public void setTourNum(int tourNum) {
		this.tourNum = tourNum;
	}
	public int gettNum() {
		return tNum;
	}
	public void settNum(int tNum) {
		this.tNum = tNum;
	}
	public String getTourName() {
		return tourName;
	}
	public void setTourName(String tourName) {
		this.tourName = tourName;
	}
	public int getMaxNum() {
		return maxNum;
	}
	public void setMaxNum(int maxNum) {
		this.maxNum = maxNum;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public int getTotalNum() {
		return totalNum;
	}
	public void setTotalNum(int totalNum) {
		this.totalNum = totalNum;
	}
	
	
}
