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
	
	
	
}//end CoinContreller
