package com.nuri.s5.model;


public class MemberVO {
	private String email;
	private String pw;
	private String name;
	private String birth;
	private int kCheck;
	private int aCheck;
	private int mnum;
	
	
	
	
	public int getMnum() {
		return mnum;
	}
	public void setMnum(int mnum) {
		this.mnum = mnum;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
	public String getBirth() {
		return birth;
	}
	public void setBirth(String birth) {
		this.birth = birth;
	}
	public int getkCheck() {
		return kCheck;
	}
	public void setkCheck(int kCheck) {
		this.kCheck = kCheck;
	}
	public int getaCheck() {
		return aCheck;
	}
	public void setaCheck(int aCheck) {
		this.aCheck = aCheck;
	}
}
	
	