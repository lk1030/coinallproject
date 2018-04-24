package com.controller;

import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.Random;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.dto.CoinaddDTO;
import com.dto.PrchDTO;
import com.dto.UserDTO;
import com.service.CoinService;
import com.service.UserService;

@Controller
public class CartController {

	@Autowired
	UserService service;
	
	@Autowired
	CoinService coinservice;
	
	//차트페이지 오픈 맵핑
	@RequestMapping("/chartUI")
	public ModelAndView chartUI(){
		
		ModelAndView mav = new ModelAndView();
		
		mav.setViewName("chart/chart");
		
		return mav;
	}
	
	@RequestMapping("/Bitadd")
	public ModelAndView Bitadd(@RequestParam ("bitga") String bitga,@RequestParam ("bitsu") String bitsu,
								@RequestParam ("allbitga") String allbitga,
									HttpSession session,HashMap<String,String> map){
		
		UserDTO dto = (UserDTO)session.getAttribute("login");
		
		String url = null;
		
		if(dto != null) {
		Calendar cal = Calendar.getInstance();
		String m = String.valueOf(cal.get(Calendar.MARCH)+1);	
		String d= String.valueOf(cal.get(Calendar.DAY_OF_MONTH));	
		String day = m+"-"+d;
		
		CoinaddDTO cdto = null;
		map.put("id", dto.getId());
		map.put("coinname", "Bit");
		int coincount = coinservice.coinaddCount(map);
		
		if(coincount == 0) {
			cdto = new CoinaddDTO(dto.getId(),"Bit",bitsu,day,bitga);
			coinservice.coinadd(cdto);
		}else {
			int hyunsu = coinservice.mycoinCount(map);
			int bitsuint = Integer.parseInt(bitsu);
			int sumsu = hyunsu+bitsuint;
			String ssumsu = String.valueOf(sumsu);
			cdto = new CoinaddDTO(dto.getId(),"Bit",ssumsu,day,bitga);
			coinservice.coinaddupdate(cdto);
		}
		
		url = "forward:situationUI";
		}else{
			url = "login";
		}
		
		ModelAndView mav = new ModelAndView();
		
		mav.setViewName(url);
		
		return mav;
	}
	
	
	
}
