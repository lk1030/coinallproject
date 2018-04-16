package com.dto;

import org.apache.ibatis.type.Alias;

@Alias("UserDTO")
public class UserDTO {

	private String id;
	private String pw;	
	private String name;	
	private String ph1;
	private String ph2;
	private String ph3;
	private String addr1;
	private String addr2;
	private String addr3;
	private String email;
	private String email2;
	private String bank1;
	private String bank2;
	private String bpw;
	
	public UserDTO() {}

	public UserDTO(String id, String pw, String name, String ph1, String ph2, String ph3, String addr1, String addr2,
			String addr3, String email, String email2, String bank1, String bank2, String bpw) {
		super();
		this.id = id;
		this.pw = pw;
		this.name = name;
		this.ph1 = ph1;
		this.ph2 = ph2;
		this.ph3 = ph3;
		this.addr1 = addr1;
		this.addr2 = addr2;
		this.addr3 = addr3;
		this.email = email;
		this.email2 = email2;
		this.bank1 = bank1;
		this.bank2 = bank2;
		this.bpw = bpw;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPw() {
		return pw;
	}

	public void setPw(String pw) {
		this.pw = pw;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPh1() {
		return ph1;
	}

	public void setPh1(String ph1) {
		this.ph1 = ph1;
	}

	public String getPh2() {
		return ph2;
	}

	public void setPh2(String ph2) {
		this.ph2 = ph2;
	}

	public String getPh3() {
		return ph3;
	}

	public void setPh3(String ph3) {
		this.ph3 = ph3;
	}

	public String getAddr1() {
		return addr1;
	}

	public void setAddr1(String addr1) {
		this.addr1 = addr1;
	}

	public String getAddr2() {
		return addr2;
	}

	public void setAddr2(String addr2) {
		this.addr2 = addr2;
	}

	public String getAddr3() {
		return addr3;
	}

	public void setAddr3(String addr3) {
		this.addr3 = addr3;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getEmail2() {
		return email2;
	}

	public void setEmail2(String email2) {
		this.email2 = email2;
	}

	public String getBank1() {
		return bank1;
	}

	public void setBank1(String bank1) {
		this.bank1 = bank1;
	}

	public String getBank2() {
		return bank2;
	}

	public void setBank2(String bank2) {
		this.bank2 = bank2;
	}

	public String getBpw() {
		return bpw;
	}

	public void setBpw(String bpw) {
		this.bpw = bpw;
	}

	@Override
	public String toString() {
		return "UserDTO [id=" + id + ", pw=" + pw + ", name=" + name + ", ph1=" + ph1 + ", ph2=" + ph2 + ", ph3=" + ph3
				+ ", addr1=" + addr1 + ", addr2=" + addr2 + ", addr3=" + addr3 + ", email=" + email + ", email2="
				+ email2 + ", bank1=" + bank1 + ", bank2=" + bank2 + ", bpw=" + bpw + "]";
	}

	
	
	
	
	
	
	
	
}
