package com.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class CoinDAO {

	@Autowired
	SqlSessionTemplate template;
	
	public void bitinsert(int num,String bit) {
		template.insert("CoinMapper.bitInsert",bit);
	}
	
	public int bitCount() {
		return template.selectOne("CoinMapper.bitCount");
	}
		
	public void bitnuminsert(int num) {
		template.insert("CoinMapper.bitNumInsert",num);
	}
	
	public int bitnumcount() {
		return template.selectOne("CoinMapper.bitNumCount");
	}
	
	public void bitoneupdate() {
		template.update("CoinMapper.bitoneupdate");
	}
	
	public void bitallupdate(int num) {
		template.update("CoinMapper.bitallupdate",num);
	}
	
	public int selectnotnull(int num) {
		return template.update("CoinMapper.selectnotnull",num);
	}	
	
}
