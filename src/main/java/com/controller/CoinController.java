package com.controller;

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
	public @ResponseBody String Bit(HttpSession session){
		
		Random ran = new Random();
		
		int bit_ =ran.nextInt(15000)+10000;
		
		String bit = String.valueOf(bit_);
		
		int bitcount = service.bitCount();
		
		if(bitcount >=30){
			service.bitonedelete();
			service.bitinsert(bit);
		}
		
		return bit;
	}
	
	
	
}//end CoinContreller
