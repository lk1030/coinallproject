package com.dao;

import java.util.HashMap;

import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dto.BankDTO;
import com.dto.CashDTO;
import com.dto.CoinaddDTO;
import com.dto.UserDTO;

@Repository
public class UserDAO {

	@Autowired
	SqlSessionTemplate template;
	
	//개인정보 수정
	public void userupdate(UserDTO dto){
		template.update("UserMapper.userupdate",dto);		
	}
	
	//계좌 잔액 조정
	public void bankup(BankDTO dto){
			template.update("UserMapper.bankup",dto);		
		}
	
	//은행 계좌 잔액 체크
	public int bankselect(String id){
		return template.selectOne("UserMapper.bankselect", id);	 
	}

	//회원가입 계좌테이블 등록
	public void useraddbank(BankDTO bdto){
		template.insert("UserMapper.useraddbank", bdto);
		}	
	
	
	//캐시충전시 금액 체크
	public int cashselect(String id){

		return template.selectOne("UserMapper.cashselect", id);

	}

	//캐시 충전
	public void cashup(CashDTO dto){
			template.update("UserMapper.cashup",dto);

		}
	
	
	//회원가입 케시테이블 등록
	public void useraddcash(CashDTO cdto){		
			template.insert("UserMapper.useraddcash", cdto);
		}	
	
	
	//회원 가입
	public void userAdd(UserDTO dto){
			template.insert("UserMapper.useradd", dto);
		}	
	//로그인
	public UserDTO login(HashMap<String, String> map){
		return template.selectOne("UserMapper.login",map);
	}
	
	
	
	//아이디 체크
	public int idCheck(String id) {
		return template.selectOne("UserMapper.memberIdCheck",id);
	}	
	
	//아이디 찾기
		public UserDTO searchId(HashMap<String, String> map) {
					
			return template.selectOne("UserMapper.searchId",map);
			
		}
		
		//비밀번호 찾기
		public UserDTO searchPw(HashMap<String, String> map) {
			
			return template.selectOne("UserMapper.searchPw",map);				
		}	
		
		//구매코인 가져오기
		public CoinaddDTO selectgubit(HashMap<String, String> map) {			
			return template.selectOne("UserMapper.selectgubit",map);			
		}	
		
		public CoinaddDTO selectgutwo(HashMap<String, String> map) {			
			return template.selectOne("UserMapper.selectgutwo",map);			
		}	
		
		public CoinaddDTO selectguthree(HashMap<String, String> map) {			
			return template.selectOne("UserMapper.selectguthree",map);			
		}
		
		public CoinaddDTO selectgufour(HashMap<String, String> map) {			
			return template.selectOne("UserMapper.selectgufour",map);			
		}
		
		public CoinaddDTO selectgufive(HashMap<String, String> map) {			
			return template.selectOne("UserMapper.selectgufive",map);			
		}
		
		public CoinaddDTO selectgusix(HashMap<String, String> map) {			
			return template.selectOne("UserMapper.selectgusix",map);			
		}
		
		public CoinaddDTO selectguseven(HashMap<String, String> map) {			
			return template.selectOne("UserMapper.selectguseven",map);			
		}
		
		public CoinaddDTO selectgueight(HashMap<String, String> map) {			
			return template.selectOne("UserMapper.selectgueight",map);			
		}
		
		public CoinaddDTO selectgunine(HashMap<String, String> map) {			
			return template.selectOne("UserMapper.selectgunine",map);			
		}
		
		public CoinaddDTO selectguten(HashMap<String, String> map) {			
			return template.selectOne("UserMapper.selectguten",map);			
		}

		//총 보유 코인 파악
		public int selectidcoin(String id) {
			return template.selectOne("UserMapper.selectidcoin",id);
		}
	
}
