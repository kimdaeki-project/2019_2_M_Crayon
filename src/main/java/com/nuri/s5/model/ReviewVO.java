package com.nuri.s5.model;

import java.util.List;

public class ReviewVO {
	
	private int num;
	private String title;
	private String writer;
	private String contents;
	private String day;
	private int hit;
	
	public int getHit() {
		return hit;
	}
	public void setHit(int hit) {
		this.hit = hit;
	}
	private List<ReviewFilesVO> files;
	
	public List<ReviewFilesVO> getFiles() {
		return files;
	}
	public void setFiles(List<ReviewFilesVO> files) {
		this.files = files;
	}
	public String getDay() {
		return day;
	}
	public void setDay(String day) {
		this.day = day;
	}
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public String getContents() {
		return contents;
	}
	public void setContents(String contents) {
		this.contents = contents;
	}
	
	
	

}
