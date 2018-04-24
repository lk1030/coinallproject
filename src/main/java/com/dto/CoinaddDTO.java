package com.dto;

import org.apache.ibatis.type.Alias;

@Alias("CoinaddDTO")
public class CoinaddDTO {

	String id;
	String coinname;
	String mycoin;
	String days;
	String updown;

	public CoinaddDTO() {}

	public CoinaddDTO(String id, String coinname, String mycoin, String days, String updown) {
		super();
		this.id = id;
		this.coinname = coinname;
		this.mycoin = mycoin;
		this.days = days;
		this.updown = updown;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getCoinname() {
		return coinname;
	}

	public void setCoinname(String coinname) {
		this.coinname = coinname;
	}

	public String getMycoin() {
		return mycoin;
	}

	public void setMycoin(String mycoin) {
		this.mycoin = mycoin;
	}

	public String getDays() {
		return days;
	}

	public void setDays(String days) {
		this.days = days;
	}

	public String getUpdown() {
		return updown;
	}

	public void setUpdown(String updown) {
		this.updown = updown;
	}

	@Override
	public String toString() {
		return "CoinaddDTO [id=" + id + ", coinname=" + coinname + ", mycoin=" + mycoin + ", days=" + days + ", updown="
				+ updown + "]";
	}

	

	
	
	
}
