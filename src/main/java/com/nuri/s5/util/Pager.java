package com.nuri.s5.util;

public class Pager {
	
	private Integer curPage;	// 현재 페이지 번호
	private Integer perPage;	// 블럭 당 페이지 수
	
	private Integer startRow;	// 시작 row 번호
	private Integer lastRow;	// 마지막 row 번호
	
	// view(jsp)
	private Integer startNum;	// 시작번호
	private Integer lastNum;	// 마지막 번호
	private Integer curBlock;	// 현재 블럭 번호
	private Integer totalBlock;	// 전체 블럭 개수
	
	// List에서 종류와 search 기능을 추가하는 설정 
	private String kind;	// 검색종류
	private String search;	// 검색어
	
	
	
	public Integer getCurPage() {
		if(curPage == null || curPage == 0) {
			this.curPage = 1;
		}
		return curPage;
	}
	public void setCurPage(Integer curPage) {
		this.curPage = curPage;
	}
	public Integer getPerPage() {
		if(perPage == null || perPage == 0) {
			this.perPage = 10;
		}
		return perPage;
	}
	public void setPerPage(Integer perPage) {
		this.perPage = perPage;
	}
	public Integer getStartRow() {
		return startRow;
	}
	public void setStartRow(Integer startRow) {
		this.startRow = startRow;
	}
	public Integer getLastRow() {
		return lastRow;
	}
	public void setLastRow(Integer lastRow) {
		this.lastRow = lastRow;
	}
	public Integer getStartNum() {
		return startNum;
	}
	public void setStartNum(Integer startNum) {
		this.startNum = startNum;
	}
	public Integer getLastNum() {
		return lastNum;
	}
	public void setLastNum(Integer lastNum) {
		this.lastNum = lastNum;
	}
	public Integer getCurBlock() {
		return curBlock;
	}
	public void setCurBlock(Integer curBlock) {
		this.curBlock = curBlock;
	}
	public Integer getTotalBlock() {
		return totalBlock;
	}
	public void setTotalBlock(Integer totalBlock) {
		this.totalBlock = totalBlock;
	}
	public String getKind() {
		return kind;
	}
	public void setKind(String kind) {
		this.kind = kind;
	}
	public String getSearch() {
		if(search == null) {
			search= "";
		}
		return search;
	}
	public void setSearch(String search) {
		this.search = search;
	}
	
	// 페이지 열 만들기 : (1~5)*n개의 페이지 열
	public void makeRow() {
		this.startRow = (this.getCurPage()-1)*this.getPerPage()+1;
		this.lastRow = this.getCurPage()*this.getPerPage(); 
	}
	
	// 1열 당 페이지 만들기 : 
	public void makePage(int totalCount) {
		// 전체글의 개수 : totalCount로 설정
		
		// 전체 페이지 수 : totalPage
		int totalPage = totalCount / this.getPerPage(); // 전체페이지수 = 전체글개수(n) / 블럭당 페이지수(5)
		if(totalCount%this.getPerPage() != 0) {
			totalPage ++;
		}
		
		// 전체 블럭수(totalBlock)
		int perBlock = 5;
		totalBlock = totalPage/perBlock;
		if(totalPage%perBlock != 0) {
			totalBlock ++;
		}
		
		//curPage로 curBlock 구하기
		curBlock = this.getCurPage()/perBlock;
		if(this.getCurPage()%perBlock != 0) {
			curBlock ++;
		}
		
		// curBlock으로 startNum, lastNum 구하기
		startNum = (curBlock-1)*perBlock+1;
		lastNum = curBlock*perBlock;
		if(curBlock == totalBlock) {
			lastNum = totalPage;
		}
	
	}
}


