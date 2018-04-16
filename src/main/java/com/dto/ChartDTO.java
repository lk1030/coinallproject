package com.dto;

import org.apache.ibatis.type.Alias;

@Alias("ChartDTO")
public class ChartDTO {

	String coinname;
	int ga;

	
	public ChartDTO() {}


	public ChartDTO(String coinname, int ga) {
		super();
		this.coinname = coinname;
		this.ga = ga;
	}


	public String getCoinname() {
		return coinname;
	}


	public void setCoinname(String coinname) {
		this.coinname = coinname;
	}


	public int getGa() {
		return ga;
	}


	public void setGa(int ga) {
		this.ga = ga;
	}


	@Override
	public String toString() {
		return "ChartDTO [coinname=" + coinname + ", ga=" + ga + "]";
	}


	

	
	
	
	
	
}
