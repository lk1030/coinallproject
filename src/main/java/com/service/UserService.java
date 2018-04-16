package com.service;

import java.util.HashMap;

import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.UserDAO;
import com.dto.BankDTO;
import com.dto.CashDTO;
import com.dto.UserDTO;

@Service
public class UserService {
	
	@Autowired
	UserDAO dao;
	
	//회원가입
	public void userAdd(UserDTO dto){
		dao.userAdd(dto);
	}	
	//회원 계좌 등록
	public void useraddbank(BankDTO bdto) {
		dao.useraddbank(bdto);
	}	
	//회원 캐시 금액 초기 설정
	public void useraddcash(CashDTO cdto) {
		dao.useraddcash(cdto);
	}
	
	//로그인
	public UserDTO login(HashMap<String, String> map) {
		return dao.login(map);
	}
	
	//캐시충전시 금액 체크
	public int cashselect(String id){
		return dao.cashselect(id);
	}
	//은행 계좌 잔액 체크
	public int bankselect(String id){
		return dao.bankselect(id); 
	}
	//계좌 잔액 조정
	public void bankup(BankDTO dto){
		dao.bankup(dto);		
	}
	//캐시 잔액 조정
	public void cashup(CashDTO dto){
		dao.cashup(dto);
	}
	//회원정보 수정
	public void userupdate(UserDTO dto){
		dao.userupdate(dto);		
	}
	//아이디체크
	public int idCheck(String id) {
		return dao.idCheck(id);
	}	
	
	//아이디 찾기
		public UserDTO searchId(HashMap<String, String> map) {					
			System.out.println(dao.searchId(map));
			return dao.searchId(map);			
		}
			
		//비밀번호 찾기
		public UserDTO searchPw(HashMap<String, String> map) {			
			return dao.searchPw(map);			
		}	
	
}//end class
