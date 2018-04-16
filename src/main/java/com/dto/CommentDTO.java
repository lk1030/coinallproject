package com.dto;

import java.util.List;

import org.apache.ibatis.type.Alias;

@Alias("CommentDTO")
public class CommentDTO {

	private int COMMENT_NUMBER;
    private String id;
    private String COMMENT_CONTENT;
    private String COMMENT_DATE;
    private int num;
	public CommentDTO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public CommentDTO(int cOMMENT_NUMBER, String id, String cOMMENT_CONTENT, String cOMMENT_DATE, int num) {
		super();
		COMMENT_NUMBER = cOMMENT_NUMBER;
		this.id = id;
		COMMENT_CONTENT = cOMMENT_CONTENT;
		COMMENT_DATE = cOMMENT_DATE;
		this.num = num;
	}
	public int getCOMMENT_NUMBER() {
		return COMMENT_NUMBER;
	}
	public void setCOMMENT_NUMBER(int cOMMENT_NUMBER) {
		COMMENT_NUMBER = cOMMENT_NUMBER;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getCOMMENT_CONTENT() {
		return COMMENT_CONTENT;
	}
	public void setCOMMENT_CONTENT(String cOMMENT_CONTENT) {
		COMMENT_CONTENT = cOMMENT_CONTENT;
	}
	public String getCOMMENT_DATE() {
		return COMMENT_DATE;
	}
	public void setCOMMENT_DATE(String cOMMENT_DATE) {
		COMMENT_DATE = cOMMENT_DATE;
	}
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	@Override
	public String toString() {
		return "CommentDTO [COMMENT_NUMBER=" + COMMENT_NUMBER + ", id=" + id + ", COMMENT_CONTENT=" + COMMENT_CONTENT
				+ ", COMMENT_DATE=" + COMMENT_DATE + ", num=" + num + "]";
	}
	
	
	
	
    
    


}
