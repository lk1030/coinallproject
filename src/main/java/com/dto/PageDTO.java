package com.dto;

import java.util.List;

import org.apache.ibatis.type.Alias;
@Alias("PageDTO")
public class PageDTO {

	private List<BoardDTO> list; // 게시판 목록
	private int perPage = 10;  // 페이지 당 보여줄 갯수
	private int totalCount;   // 전체 레코드 갯수
	private int curPage;      // 현재 페이지 번호
	
	private String searchName;
	private String searchValue;
	
	
	
	public String getSearchName() {
		return searchName;
	}
	public void setSearchName(String searchName) {
		this.searchName = searchName;
	}
	public String getSearchValue() {
		return searchValue;
	}
	public void setSearchValue(String searchValue) {
		this.searchValue = searchValue;
	}
	public List<BoardDTO> getList() {
		return list;
	}
	public void setList(List<BoardDTO> list) {
		this.list = list;
	}
	public int getPerPage() {
		return perPage;
	}
	public void setPerPage(int perPage) {
		this.perPage = perPage;
	}
	public int getTotalCount() {
		return totalCount;
	}
	public void setTotalCount(int totalCount) {
		this.totalCount = totalCount;
	}
	public int getCurPage() {
		return curPage;
	}
	public void setCurPage(int curPage) {
		this.curPage = curPage;
	}
	
	
	
	
}
