package com.dto;

import org.apache.ibatis.type.Alias;

@Alias("BoardDTO")
public class BoardDTO {

	private int num;
	private String title;
	private String id;
	private String content;
	private String writeday;
	private int readCnt;
	private int pos;
	private int depth;
	private long commentCount;
	public BoardDTO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public BoardDTO(int num, String title, String id, String content, String writeday, int readCnt, int pos, int depth,
			long commentCount) {
		super();
		this.num = num;
		this.title = title;
		this.id = id;
		this.content = content;
		this.writeday = writeday;
		this.readCnt = readCnt;
		this.pos = pos;
		this.depth = depth;
		this.commentCount = commentCount;
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
	public int getReadCnt() {
		return readCnt;
	}
	public void setReadCnt(int readCnt) {
		this.readCnt = readCnt;
	}
	public int getPos() {
		return pos;
	}
	public void setPos(int pos) {
		this.pos = pos;
	}
	public int getDepth() {
		return depth;
	}
	public void setDepth(int depth) {
		this.depth = depth;
	}
	public long getCommentCount() {
		return commentCount;
	}
	public void setCommentCount(long commentCount) {
		this.commentCount = commentCount;
	}
	@Override
	public String toString() {
		return "BoardDTO [num=" + num + ", title=" + title + ", id=" + id + ", content=" + content + ", writeday="
				+ writeday + ", readCnt=" + readCnt + ", pos=" + pos + ", depth=" + depth + ", commentCount="
				+ commentCount + "]";
	}
	
	
	
	
	
	
}
