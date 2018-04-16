package com.dto;

import java.util.List;

import org.apache.ibatis.type.Alias;
@Alias("OneDTO")
public class OneDTO {

	private List<OneBoardDTO> olist;

	public OneDTO(List<OneBoardDTO> olist) {
		super();
		this.olist = olist;
	}

	public OneDTO() {
		super();
		// TODO Auto-generated constructor stub
	}

	public List<OneBoardDTO> getOlist() {
		return olist;
	}

	public void setOlist(List<OneBoardDTO> olist) {
		this.olist = olist;
	}

	@Override
	public String toString() {
		return "OneDTO [olist=" + olist + "]";
	}

	

	
	
	
	
	
	
	
	
}
