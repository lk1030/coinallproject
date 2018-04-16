package com.dto;

import org.apache.ibatis.type.Alias;

@Alias("BankDTO")
public class BankDTO {

	String id;
	int money;
	
	public BankDTO() {}

	public BankDTO(String id, int money) {
		super();
		this.id = id;
		this.money = money;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public int getMoney() {
		return money;
	}

	public void setMoney(int money) {
		this.money = money;
	}

	@Override
	public String toString() {
		return "BankDTO [id=" + id + ", money=" + money + "]";
	}
	
	
	
	
}
