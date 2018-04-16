package com.dto;

import org.apache.ibatis.type.Alias;

@Alias("CashDTO")
public class CashDTO {

	String id;
	int cmoney;
	
	
	public CashDTO() {}


	public CashDTO(String id, int cmoney) {
		super();
		this.id = id;
		this.cmoney = cmoney;
	}


	public String getId() {
		return id;
	}


	public void setId(String id) {
		this.id = id;
	}


	public int getCmoney() {
		return cmoney;
	}


	public void setCmoney(int cmoney) {
		this.cmoney = cmoney;
	}


	@Override
	public String toString() {
		return "CashDTO [id=" + id + ", cmoney=" + cmoney + "]";
	}


	
	
	
	
	
	
}
