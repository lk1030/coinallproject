package com.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Random;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.service.CoinService;

@Controller
public class CoinController {

	@Autowired
	CoinService service;
	
	//bit
	@RequestMapping("/Bit")
	public @ResponseBody List<Integer> Bit(HttpSession session,HashMap<String,Integer> map){
		
		Random ran = new Random();
		int bit =ran.nextInt(15000)+10000;
		int bitnumcount = service.bitnumcount();
		
		//코인 넘버를 설정하는 코드
		if(bitnumcount <30) {
			for(int i=1;i<31;i++){
				service.bitnuminsert(i);
			}
		}
		//bit값을 num순으로 대조하여 bit가 null인것부터 순서대로 값 삽입		
		int num = service.bitCount();
		
		if(num <31) {		
			map.put("num", num+1);
			map.put("bit", bit);		
			service.bitinsert(map);
		}		
		//총 bit가 30개가 되면 1번을 삭제하고 2번이 올라가고 반복하다가 30을 삭제하고 새로운 값을 넣는다. 
		if(num ==30) {			
			for(int i=1;i<30;i++) {
				service.bitallupdate(i);
			}		
			service.bitoneupdate();		
			map.put("num", 30);
			map.put("bit", bit);		
			service.bitinsert(map);		
		}	
		List<Integer> list = service.selectbit();		
		return list;
	}//end Bit
	
	//two
	@RequestMapping("/Two")
	public @ResponseBody List<Integer> Two(HttpSession session,HashMap<String,Integer> map){
		
		Random ran = new Random();
		int two =ran.nextInt(15000)+10000;
		int twonumcount = service.twonumcount();
		
		//코인 넘버를 설정하는 코드
		if(twonumcount <30) {
			for(int i=1;i<31;i++){
				service.twonuminsert(i);
			}
		}
		//two값을 num순으로 대조하여 two가 null인것부터 순서대로 값 삽입		
		int num = service.twoCount();
		
		if(num <31) {		
			map.put("num", num+1);
			map.put("two", two);		
			service.twoinsert(map);
		}		
		//총 two가 30개가 되면 1번을 삭제하고 2번이 올라가고 반복하다가 30을 삭제하고 새로운 값을 넣는다. 
		if(num ==30) {			
			for(int i=1;i<30;i++) {
				service.twoallupdate(i);
			}		
			service.twooneupdate();		
			map.put("num", 30);
			map.put("two", two);		
			service.twoinsert(map);		
		}	
		List<Integer> list = service.selecttwo();		
		return list;
	}
//end Bit

	//two
	@RequestMapping("/Three")
	public @ResponseBody List<Integer> Three(HttpSession session,HashMap<String,Integer> map){
		
		Random ran = new Random();
		int three =ran.nextInt(15000)+10000;
		int threenumcount = service.threenumcount();
		
		//코인 넘버를 설정하는 코드
		if(threenumcount <30) {
			for(int i=1;i<31;i++){
				service.threenuminsert(i);
			}
		}
		//bit값을 num순으로 대조하여 bit가 null인것부터 순서대로 값 삽입		
		int num = service.threeCount();
		
		if(num <31) {		
			map.put("num", num+1);
			map.put("three", three);		
			service.threeinsert(map);
		}		
		//총 bit가 30개가 되면 1번을 삭제하고 2번이 올라가고 반복하다가 30을 삭제하고 새로운 값을 넣는다. 
		if(num ==30) {			
			for(int i=1;i<30;i++) {
				service.threeallupdate(i);
			}		
			service.threeoneupdate();		
			map.put("num", 30);
			map.put("three", three);		
			service.threeinsert(map);		
		}	
		List<Integer> list = service.selectthree();		
		return list;
	}

	
	//two
	@RequestMapping("/Four")
	public @ResponseBody List<Integer> Four(HttpSession session,HashMap<String,Integer> map){
		
		Random ran = new Random();
		int four =ran.nextInt(15000)+10000;
		int fournumcount = service.fournumcount();
		
		//코인 넘버를 설정하는 코드
		if(fournumcount <30) {
			for(int i=1;i<31;i++){
				service.fournuminsert(i);
			}
		}
		//four값을 num순으로 대조하여 four가 null인것부터 순서대로 값 삽입		
		int num = service.fourCount();
		
		if(num <31) {		
			map.put("num", num+1);
			map.put("four", four);		
			service.fourinsert(map);
		}		
		//총 four가 30개가 되면 1번을 삭제하고 2번이 올라가고 반복하다가 30을 삭제하고 새로운 값을 넣는다. 
		if(num ==30) {			
			for(int i=1;i<30;i++) {
				service.fourallupdate(i);
			}		
			service.fouroneupdate();		
			map.put("num", 30);
			map.put("four", four);		
			service.fourinsert(map);		
		}	
		List<Integer> list = service.selectfour();		
		return list;
	}

	
	//two
	@RequestMapping("/Five")
	public @ResponseBody List<Integer> Five(HttpSession session,HashMap<String,Integer> map){
		
		Random ran = new Random();
		int five =ran.nextInt(15000)+10000;
		int fivenumcount = service.fivenumcount();
		
		//코인 넘버를 설정하는 코드
		if(fivenumcount <30) {
			for(int i=1;i<31;i++){
				service.fivenuminsert(i);
			}
		}
		//five값을 num순으로 대조하여 five가 null인것부터 순서대로 값 삽입		
		int num = service.fiveCount();
		
		if(num <31) {		
			map.put("num", num+1);
			map.put("five", five);		
			service.fiveinsert(map);
		}		
		//총 five가 30개가 되면 1번을 삭제하고 2번이 올라가고 반복하다가 30을 삭제하고 새로운 값을 넣는다. 
		if(num ==30) {			
			for(int i=1;i<30;i++) {
				service.fiveallupdate(i);
			}		
			service.fiveoneupdate();		
			map.put("num", 30);
			map.put("five", five);		
			service.fiveinsert(map);		
		}	
		List<Integer> list = service.selectfive();		
		return list;
	}

	
	//two
	@RequestMapping("/Six")
	public @ResponseBody List<Integer> Six(HttpSession session,HashMap<String,Integer> map){
		
		Random ran = new Random();
		int six =ran.nextInt(15000)+10000;
		int sixnumcount = service.sixnumcount();
		
		//코인 넘버를 설정하는 코드
		if(sixnumcount <30) {
			for(int i=1;i<31;i++){
				service.sixnuminsert(i);
			}
		}
		//six값을 num순으로 대조하여 six가 null인것부터 순서대로 값 삽입		
		int num = service.sixCount();
		
		if(num <31) {		
			map.put("num", num+1);
			map.put("six", six);		
			service.sixinsert(map);
		}		
		//총 six가 30개가 되면 1번을 삭제하고 2번이 올라가고 반복하다가 30을 삭제하고 새로운 값을 넣는다. 
		if(num ==30) {			
			for(int i=1;i<30;i++) {
				service.sixallupdate(i);
			}		
			service.sixoneupdate();		
			map.put("num", 30);
			map.put("six", six);		
			service.sixinsert(map);		
		}	
		List<Integer> list = service.selectsix();		
		return list;
	}

	
	//two
	@RequestMapping("/Seven")
	public @ResponseBody List<Integer> Seven(HttpSession session,HashMap<String,Integer> map){
		
		Random ran = new Random();
		int seven =ran.nextInt(15000)+10000;
		int sevennumcount = service.sevennumcount();
		
		//코인 넘버를 설정하는 코드
		if(sevennumcount <30) {
			for(int i=1;i<31;i++){
				service.sevennuminsert(i);
			}
		}
		//seven값을 num순으로 대조하여 seven가 null인것부터 순서대로 값 삽입		
		int num = service.sevenCount();
		
		if(num <31) {		
			map.put("num", num+1);
			map.put("seven", seven);		
			service.seveninsert(map);
		}		
		//총 seven가 30개가 되면 1번을 삭제하고 2번이 올라가고 반복하다가 30을 삭제하고 새로운 값을 넣는다. 
		if(num ==30) {			
			for(int i=1;i<30;i++) {
				service.sevenallupdate(i);
			}		
			service.sevenoneupdate();		
			map.put("num", 30);
			map.put("seven", seven);		
			service.seveninsert(map);		
		}	
		List<Integer> list = service.selectseven();		
		return list;
	}

	
	//two
	@RequestMapping("/Eight")
	public @ResponseBody List<Integer> Eight(HttpSession session,HashMap<String,Integer> map){
		
		Random ran = new Random();
		int eight =ran.nextInt(15000)+10000;
		int eightnumcount = service.eightnumcount();
		
		//코인 넘버를 설정하는 코드
		if(eightnumcount <30) {
			for(int i=1;i<31;i++){
				service.eightnuminsert(i);
			}
		}
		//eight값을 num순으로 대조하여 eight가 null인것부터 순서대로 값 삽입		
		int num = service.eightCount();
		
		if(num <31) {		
			map.put("num", num+1);
			map.put("eight", eight);		
			service.eightinsert(map);
		}		
		//총 eight가 30개가 되면 1번을 삭제하고 2번이 올라가고 반복하다가 30을 삭제하고 새로운 값을 넣는다. 
		if(num ==30) {			
			for(int i=1;i<30;i++) {
				service.eightallupdate(i);
			}		
			service.eightoneupdate();		
			map.put("num", 30);
			map.put("eight", eight);		
			service.eightinsert(map);		
		}	
		List<Integer> list = service.selecteight();		
		return list;
	}

	
	//two
	@RequestMapping("/Nine")
	public @ResponseBody List<Integer> Nine(HttpSession session,HashMap<String,Integer> map){
		
		Random ran = new Random();
		int nine =ran.nextInt(15000)+10000;
		int ninenumcount = service.ninenumcount();
		
		//코인 넘버를 설정하는 코드
		if(ninenumcount <30) {
			for(int i=1;i<31;i++){
				service.ninenuminsert(i);
			}
		}
		//nine값을 num순으로 대조하여 nine가 null인것부터 순서대로 값 삽입		
		int num = service.nineCount();
		
		if(num <31) {		
			map.put("num", num+1);
			map.put("nine", nine);		
			service.nineinsert(map);
		}		
		//총 nine가 30개가 되면 1번을 삭제하고 2번이 올라가고 반복하다가 30을 삭제하고 새로운 값을 넣는다. 
		if(num ==30) {			
			for(int i=1;i<30;i++) {
				service.nineallupdate(i);
			}		
			service.nineoneupdate();		
			map.put("num", 30);
			map.put("nine", nine);		
			service.nineinsert(map);		
		}	
		List<Integer> list = service.selectnine();		
		return list;
	}

	
	//two
	@RequestMapping("/Ten")
	public @ResponseBody List<Integer> Ten(HttpSession session,HashMap<String,Integer> map){
		
		Random ran = new Random();
		int ten =ran.nextInt(15000)+10000;
		int tennumcount = service.tennumcount();
		
		//코인 넘버를 설정하는 코드
		if(tennumcount <30) {
			for(int i=1;i<31;i++){
				service.tennuminsert(i);
			}
		}
		//ten값을 num순으로 대조하여 ten가 null인것부터 순서대로 값 삽입		
		int num = service.tenCount();
		
		if(num <31) {		
			map.put("num", num+1);
			map.put("ten", ten);		
			service.teninsert(map);
		}		
		//총 ten가 30개가 되면 1번을 삭제하고 2번이 올라가고 반복하다가 30을 삭제하고 새로운 값을 넣는다. 
		if(num ==30) {			
			for(int i=1;i<30;i++) {
				service.tenallupdate(i);
			}		
			service.tenoneupdate();		
			map.put("num", 30);
			map.put("ten", ten);		
			service.teninsert(map);		
		}	
		List<Integer> list = service.selectten();		
		return list;
	}

	
	
}//end CoinContreller
