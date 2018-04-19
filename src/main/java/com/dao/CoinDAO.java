package com.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class CoinDAO {

	@Autowired
	SqlSessionTemplate template;
	
	public void bitinsert(HashMap<String,Integer> map) {
		template.insert("CoinMapper.bitInsert",map);
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
	
	public List<Integer> selectbit() {
		return template.selectList("CoinMapper.selectbit");
	}	
	
}
