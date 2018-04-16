package com.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class CoinDAO {

	@Autowired
	SqlSessionTemplate template;
	
	public void bitinsert(String bit) {
		template.insert("CoinMapper.bitInsert",bit);
	}
	
	public int bitCount() {
		return template.selectOne("CoinMapper.bitCount");
	}
	
	public void bitonedelete() {
		 template.delete("CoinMapper.bitonedelete");
	}
	
	
}
