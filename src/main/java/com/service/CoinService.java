package com.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.CoinDAO;
import com.dto.CoinaddDTO;
import com.dto.UserDTO;

@Service
public class CoinService {

	@Autowired
	CoinDAO dao;
	//bit
	//
	public void bitinsert(HashMap<String,Integer> map) {
		dao.bitinsert(map);
	}
	
	//
	public int bitCount() {
		return dao.bitCount();
	}
	
	//
	public void bitnuminsert(int num) {
		dao.bitnuminsert(num);
	}
	
	//
	public int bitnumcount() {
		return dao.bitnumcount();
	}
	//
	public void bitoneupdate() {
		dao.bitoneupdate();
	}
	//
	public void bitallupdate(int num) {
		dao.bitallupdate(num);
	}
	
	public List<Integer> selectbit() {
		return dao.selectbit();
	}
	//end bit
	
	//Two
	//
	public void twoinsert(HashMap<String,Integer> map) {
		dao.twoinsert(map);
	}
	
	//
	public int twoCount() {
		return dao.twoCount();
	}
	
	//
	public void twonuminsert(int num) {
		dao.twonuminsert(num);
	}
	
	//
	public int twonumcount() {
		return dao.twonumcount();
	}
	//
	public void twooneupdate() {
		dao.twooneupdate();
	}
	//
	public void twoallupdate(int num) {
		dao.twoallupdate(num);
	}
	
	public List<Integer> selecttwo() {
		return dao.selecttwo();
	}

	//end Two
	
	//three
	public void threeinsert(HashMap<String,Integer> map) {
		dao.threeinsert(map);
	}
	
	//
	public int threeCount() {
		return dao.threeCount();
	}
	
	//
	public void threenuminsert(int num) {
		dao.threenuminsert(num);
	}
	
	//
	public int threenumcount() {
		return dao.threenumcount();
	}
	//
	public void threeoneupdate() {
		dao.threeoneupdate();
	}
	//
	public void threeallupdate(int num) {
		dao.threeallupdate(num);
	}
	
	public List<Integer> selectthree() {
		return dao.selectthree();
	}


	//end Three
	
	//Four
	//
	public void fourinsert(HashMap<String,Integer> map) {
		dao.fourinsert(map);
	}
	
	//
	public int fourCount() {
		return dao.fourCount();
	}
	
	//
	public void fournuminsert(int num) {
		dao.fournuminsert(num);
	}
	
	//
	public int fournumcount() {
		return dao.fournumcount();
	}
	//
	public void fouroneupdate() {
		dao.fouroneupdate();
	}
	//
	public void fourallupdate(int num) {
		dao.fourallupdate(num);
	}
	
	public List<Integer> selectfour() {
		return dao.selectfour();
	}

	//end Four
	
	//Five
	//
	public void fiveinsert(HashMap<String,Integer> map) {
		dao.fiveinsert(map);
	}
	
	//
	public int fiveCount() {
		return dao.fiveCount();
	}
	
	//
	public void fivenuminsert(int num) {
		dao.fivenuminsert(num);
	}
	
	//
	public int fivenumcount() {
		return dao.fivenumcount();
	}
	//
	public void fiveoneupdate() {
		dao.fiveoneupdate();
	}
	//
	public void fiveallupdate(int num) {
		dao.fiveallupdate(num);
	}
	
	public List<Integer> selectfive() {
		return dao.selectfive();
	}

	//end Five
	
	//Six
	//
	public void sixinsert(HashMap<String,Integer> map) {
		dao.sixinsert(map);
	}
	
	//
	public int sixCount() {
		return dao.sixCount();
	}
	
	//
	public void sixnuminsert(int num) {
		dao.sixnuminsert(num);
	}
	
	//
	public int sixnumcount() {
		return dao.sixnumcount();
	}
	//
	public void sixoneupdate() {
		dao.sixoneupdate();
	}
	//
	public void sixallupdate(int num) {
		dao.sixallupdate(num);
	}
	
	public List<Integer> selectsix() {
		return dao.selectsix();
	}

	//end Six
	
	//Seven
	//
	public void seveninsert(HashMap<String,Integer> map) {
		dao.seveninsert(map);
	}
	
	//
	public int sevenCount() {
		return dao.sevenCount();
	}
	
	//
	public void sevennuminsert(int num) {
		dao.sevennuminsert(num);
	}
	
	//
	public int sevennumcount() {
		return dao.sevennumcount();
	}
	//
	public void sevenoneupdate() {
		dao.sevenoneupdate();
	}
	//
	public void sevenallupdate(int num) {
		dao.sevenallupdate(num);
	}
	
	public List<Integer> selectseven() {
		return dao.selectseven();
	}

	//end Seven
	
	//Eight
	//
	public void eightinsert(HashMap<String,Integer> map) {
		dao.eightinsert(map);
	}
	
	//
	public int eightCount() {
		return dao.eightCount();
	}
	
	//
	public void eightnuminsert(int num) {
		dao.eightnuminsert(num);
	}
	
	//
	public int eightnumcount() {
		return dao.eightnumcount();
	}
	//
	public void eightoneupdate() {
		dao.eightoneupdate();
	}
	//
	public void eightallupdate(int num) {
		dao.eightallupdate(num);
	}
	
	public List<Integer> selecteight() {
		return dao.selecteight();
	}

	//end Eight
	
	//Nine
	//
	public void nineinsert(HashMap<String,Integer> map) {
		dao.nineinsert(map);
	}
	
	//
	public int nineCount() {
		return dao.nineCount();
	}
	
	//
	public void ninenuminsert(int num) {
		dao.ninenuminsert(num);
	}
	
	//
	public int ninenumcount() {
		return dao.ninenumcount();
	}
	//
	public void nineoneupdate() {
		dao.nineoneupdate();
	}
	//
	public void nineallupdate(int num) {
		dao.nineallupdate(num);
	}
	
	public List<Integer> selectnine() {
		return dao.selectnine();
	}

	//end Nine
	
	//Ten
	//
	public void teninsert(HashMap<String,Integer> map) {
		dao.teninsert(map);
	}
	
	//
	public int tenCount() {
		return dao.tenCount();
	}
	
	//
	public void tennuminsert(int num) {
		dao.tennuminsert(num);
	}
	
	//
	public int tennumcount() {
		return dao.tennumcount();
	}
	//
	public void tenoneupdate() {
		dao.tenoneupdate();
	}
	//
	public void tenallupdate(int num) {
		dao.tenallupdate(num);
	}
	
	public List<Integer> selectten() {
		return dao.selectten();
	}
	//end Ten
	
	
	//구매 코인 DB넣기
	public void coinadd(CoinaddDTO dto){
		dao.coinadd(dto);
	}	
	//구매시 카운터 체크
	public int coinaddCount(HashMap<String,String> map) {
		return dao.coinaddCount(map);
	
	}
	//같은 코인 구매시 업데이트
	public void coinaddupdate(CoinaddDTO dto){
		dao.coinaddupdate(dto);
	}
	
	public int mycoinCount(HashMap<String,String> map) {
		return dao.mycoinCount(map);
	}
	
}