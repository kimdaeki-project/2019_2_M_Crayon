package com.nuri.s5.model;

import java.util.List;

public class TourNoticeVO {
	private int num;
	private String compared;
	private String include;
	private String exclude;
	private String alert;
	private String prepared;
	private String attention;
	private String refund;
	private List<TourNoticeVO> files;
	private String tourName;
	private int price;
	private String timeTable;
	private String time;
	
	
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
	public String getTimeTable() {
		return timeTable;
	}
	public void setTimeTable(String timeTable) {
		this.timeTable = timeTable;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	public List<TourNoticeVO> getFiles() {
		return files;
	}
	public void setFiles(List<TourNoticeVO> files) {
		this.files = files;
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
	
	
	
}
