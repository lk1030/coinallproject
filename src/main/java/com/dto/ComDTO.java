package com.dto;

import java.util.List;

import org.apache.ibatis.type.Alias;
@Alias("ComDTO")
public class ComDTO {

	private List<CommentDTO> clist;

	

	public List<CommentDTO> getClist() {
		return clist;
	}

	public void setClist(List<CommentDTO> clist) {
		this.clist = clist;
	}

	@Override
	public String toString() {
		return "ComDTO [clist=" + clist + "]";
	}
	
	
	
	
	
	
	
}
