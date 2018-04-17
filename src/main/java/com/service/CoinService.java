package com.service;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.CoinDAO;

@Service
public class CoinService {

	@Autowired
	CoinDAO dao;
	
	public void bitinsert(HashMap<String, String> map) {
		dao.bitinsert(map);
	}
	
	public int bitCount() {
		return dao.bitCount();
	}
		
	public void bitnuminsert(int num) {
		dao.bitnuminsert(num);
	}
	
	public int bitnumcount() {
		return dao.bitnumcount();
	}
	
	public void bitoneupdate() {
		dao.bitoneupdate();
	}
	
	public void bitallupdate(int num) {
		dao.bitallupdate(num);
	}
	
	public int selectnotnull(int num) {
		return dao.selectnotnull(num);
	}

}