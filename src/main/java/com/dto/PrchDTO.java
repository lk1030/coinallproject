package com.dto;

import org.apache.ibatis.type.Alias;

@Alias("PrchDTO")
public class PrchDTO {

	public String id;
	public String coinname;
	public String nmbr;
	public String hyundete;
	public String coin28;
	public String coin29;
	public String px;
	
	public PrchDTO() {}

	public PrchDTO(String id, String coinname, String nmbr, String hyundete, String coin28, String coin29, String px) {
		super();
		this.id = id;
		this.coinname = coinname;
		this.nmbr = nmbr;
		this.hyundete = hyundete;
		this.coin28 = coin28;
		this.coin29 = coin29;
		this.px = px;
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

	public String getNmbr() {
		return nmbr;
	}

	public void setNmbr(String nmbr) {
		this.nmbr = nmbr;
	}

	public String getHyundete() {
		return hyundete;
	}

	public void setHyundete(String hyundete) {
		this.hyundete = hyundete;
	}

	public String getCoin28() {
		return coin28;
	}

	public void setCoin28(String coin28) {
		this.coin28 = coin28;
	}

	public String getCoin29() {
		return coin29;
	}

	public void setCoin29(String coin29) {
		this.coin29 = coin29;
	}

	public String getPx() {
		return px;
	}

	public void setPx(String px) {
		this.px = px;
	}

	@Override
	public String toString() {
		return "PrchDTO [id=" + id + ", coinname=" + coinname + ", nmbr=" + nmbr + ", hyundete=" + hyundete
				+ ", coin28=" + coin28 + ", coin29=" + coin29 + ", px=" + px + "]";
	}


	
	
	
	
}
