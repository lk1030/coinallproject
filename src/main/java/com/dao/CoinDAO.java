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
	
	//bit
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
	}	//end bit
	
	//Two
	public void twoinsert(HashMap<String,Integer> map) {
		template.insert("CoinMapper.twoInsert",map);
	}
	
	public int twoCount() {
		return template.selectOne("CoinMapper.twoCount");
	}
		
	public void twonuminsert(int num) {
		template.insert("CoinMapper.twoNumInsert",num);
	}
	
	public int twonumcount() {
		return template.selectOne("CoinMapper.twoNumCount");
	}
	
	public void twooneupdate() {
		template.update("CoinMapper.twooneupdate");
	}
	
	public void twoallupdate(int num) {
		template.update("CoinMapper.twoallupdate",num);
	}
	
	public List<Integer> selecttwo() {
		return template.selectList("CoinMapper.selecttwo");
	}
	//end Two
		
		//three
	public void threeinsert(HashMap<String,Integer> map) {
		template.insert("CoinMapper.threeInsert",map);
	}
	
	public int threeCount() {
		return template.selectOne("CoinMapper.threeCount");
	}
		
	public void threenuminsert(int num) {
		template.insert("CoinMapper.threeNumInsert",num);
	}
	
	public int threenumcount() {
		return template.selectOne("CoinMapper.threeNumCount");
	}
	
	public void threeoneupdate() {
		template.update("CoinMapper.threeoneupdate");
	}
	
	public void threeallupdate(int num) {
		template.update("CoinMapper.threeallupdate",num);
	}
	
	public List<Integer> selectthree() {
		return template.selectList("CoinMapper.selectthree");
	}
	//end Three
		
		//Four
	public void fourinsert(HashMap<String,Integer> map) {
		template.insert("CoinMapper.fourInsert",map);
	}
	
	public int fourCount() {
		return template.selectOne("CoinMapper.fourCount");
	}
		
	public void fournuminsert(int num) {
		template.insert("CoinMapper.fourNumInsert",num);
	}
	
	public int fournumcount() {
		return template.selectOne("CoinMapper.fourNumCount");
	}
	
	public void fouroneupdate() {
		template.update("CoinMapper.fouroneupdate");
	}
	
	public void fourallupdate(int num) {
		template.update("CoinMapper.fourallupdate",num);
	}
	
	public List<Integer> selectfour() {
		return template.selectList("CoinMapper.selectfour");
	}
	//end Four
		
		//Five
	public void fiveinsert(HashMap<String,Integer> map) {
		template.insert("CoinMapper.fiveInsert",map);
	}
	
	public int fiveCount() {
		return template.selectOne("CoinMapper.fiveCount");
	}
		
	public void fivenuminsert(int num) {
		template.insert("CoinMapper.fiveNumInsert",num);
	}
	
	public int fivenumcount() {
		return template.selectOne("CoinMapper.fiveNumCount");
	}
	
	public void fiveoneupdate() {
		template.update("CoinMapper.fiveoneupdate");
	}
	
	public void fiveallupdate(int num) {
		template.update("CoinMapper.fiveallupdate",num);
	}
	
	public List<Integer> selectfive() {
		return template.selectList("CoinMapper.selectfive");
	}
	//end Five
		
		//Six
	public void sixinsert(HashMap<String,Integer> map) {
template.insert("CoinMapper.sixInsert",map);
}

public int sixCount() {
return template.selectOne("CoinMapper.sixCount");
}

public void sixnuminsert(int num) {
template.insert("CoinMapper.sixNumInsert",num);
}

public int sixnumcount() {
return template.selectOne("CoinMapper.sixNumCount");
}

public void sixoneupdate() {
template.update("CoinMapper.sixoneupdate");
}

public void sixallupdate(int num) {
template.update("CoinMapper.sixallupdate",num);
}

public List<Integer> selectsix() {
return template.selectList("CoinMapper.selectsix");
}
	//end Six
		
		//Seven
public void seveninsert(HashMap<String,Integer> map) {
template.insert("CoinMapper.sevenInsert",map);
}

public int sevenCount() {
return template.selectOne("CoinMapper.sevenCount");
}

public void sevennuminsert(int num) {
template.insert("CoinMapper.sevenNumInsert",num);
}

public int sevennumcount() {
return template.selectOne("CoinMapper.sevenNumCount");
}

public void sevenoneupdate() {
template.update("CoinMapper.sevenoneupdate");
}

public void sevenallupdate(int num) {
template.update("CoinMapper.sevenallupdate",num);
}

public List<Integer> selectseven() {
return template.selectList("CoinMapper.selectseven");
}
	//end Seven
		
		//Eight
public void eightinsert(HashMap<String,Integer> map) {
	template.insert("CoinMapper.eightInsert",map);
}

public int eightCount() {
	return template.selectOne("CoinMapper.eightCount");
}
	
public void eightnuminsert(int num) {
	template.insert("CoinMapper.eightNumInsert",num);
}

public int eightnumcount() {
	return template.selectOne("CoinMapper.eightNumCount");
}

public void eightoneupdate() {
	template.update("CoinMapper.eightoneupdate");
}

public void eightallupdate(int num) {
	template.update("CoinMapper.eightallupdate",num);
}

public List<Integer> selecteight() {
	return template.selectList("CoinMapper.selecteight");
}
	//end Eight
			
		//Nine
public void nineinsert(HashMap<String,Integer> map) {
	template.insert("CoinMapper.nineInsert",map);
}

public int nineCount() {
	return template.selectOne("CoinMapper.nineCount");
}
	
public void ninenuminsert(int num) {
	template.insert("CoinMapper.nineNumInsert",num);
}

public int ninenumcount() {
	return template.selectOne("CoinMapper.nineNumCount");
}

public void nineoneupdate() {
	template.update("CoinMapper.nineoneupdate");
}

public void nineallupdate(int num) {
	template.update("CoinMapper.nineallupdate",num);
}

public List<Integer> selectnine() {
	return template.selectList("CoinMapper.selectnine");
}
	//end Nine
	
		//Ten
public void teninsert(HashMap<String,Integer> map) {
	template.insert("CoinMapper.tenInsert",map);
}

public int tenCount() {
	return template.selectOne("CoinMapper.tenCount");
}
	
public void tennuminsert(int num) {
	template.insert("CoinMapper.tenNumInsert",num);
}

public int tennumcount() {
	return template.selectOne("CoinMapper.tenNumCount");
}

public void tenoneupdate() {
	template.update("CoinMapper.tenoneupdate");
}

public void tenallupdate(int num) {
	template.update("CoinMapper.tenallupdate",num);
}

public List<Integer> selectten() {
	return template.selectList("CoinMapper.selectten");
}
	//end Ten
}
