package com.controller;

import java.util.HashMap;
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
	public @ResponseBody String Bit(HttpSession session,HashMap<String,Integer> map,HashMap<String,String> map2){
		
		Random ran = new Random();
		
		int count = 0;
		
		int bit_ =ran.nextInt(15000)+10000;
		
		String bit = String.valueOf(bit_);
		
		int bitnumcount = service.bitnumcount();
		
		//코인 넘버를 설정하는 코드
		if(bitnumcount <30) {
			for(int i=1;i<31;i++){
				service.bitnuminsert(i);
			}
		}
			
		int bitcount = service.bitCount();
		
		if(bitcount <31) {
		
			for(int num=1;num<30;num++) {
				
				if(count != 1) {
				service.selectnotnull(num);
				
				map.put("num", num);
				map2.put("bit", bit);
				
				service.bitinsert(num,bit);	
				count = count+1;
				}
			}
			
			
			
			
			for(int i=1;i<29;i++) {
				service.bitallupdate(i);		
			}
			
			service.bitoneupdate();
		}else {
			service.bitoneupdate();
			

			
		}
		
			
			
		return bit;
	}
	
	
	
}//end CoinContreller
