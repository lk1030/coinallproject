package com.dto;

import java.util.List;

import org.apache.ibatis.type.Alias;

@Alias("OneBoardDTO")
public class OneBoardDTO {

	private int num;
	private String title;
	private String id;
	private String content;
	private String writeday;
	private int situation;
	public OneBoardDTO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public OneBoardDTO(int num, String title, String id, String content, String writeday, int situation) {
		super();
		this.num = num;
		this.title = title;
		this.id = id;
		this.content = content;
		this.writeday = writeday;
		this.situation = situation;
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
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getWriteday() {
		return writeday;
	}
	public void setWriteday(String writeday) {
		this.writeday = writeday;
	}
	public int getSituation() {
		return situation;
	}
	public void setSituation(int situation) {
		this.situation = situation;
	}
	@Override
	public String toString() {
		return "OneBoardDTO [num=" + num + ", title=" + title + ", id=" + id + ", content=" + content + ", writeday="
				+ writeday + ", situation=" + situation + "]";
	}
	
	
	
	
	
	
	
	
	
}
