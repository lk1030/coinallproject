package com.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.CoinDAO;

@Service
public class CoinService {

	@Autowired
	CoinDAO dao;
	
	public void bitinsert(String bit) {
		dao.bitinsert(bit);
	}
	
	public int bitCount() {
		return dao.bitCount();
	}
	
	public void bitonedelete() {
		dao.bitonedelete();
	}
}
