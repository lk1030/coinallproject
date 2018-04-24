package com.controller;

import java.util.Calendar;
import java.util.Date;
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
import com.service.UserService;

@Controller
public class CartController {

	@Autowired
	UserService service;
	
	//차트페이지 오픈 맵핑
	@RequestMapping("/chartUI")
	public ModelAndView chartUI(){
		
		ModelAndView mav = new ModelAndView();
		
		mav.setViewName("chart/chart");
		
		return mav;
	}
	
	@RequestMapping("/Bitadd")
	public ModelAndView Bitadd(@RequestParam ("bitga") String bitga,@RequestParam ("bitsu") String bitsu,@RequestParam ("allbitga") String allbitga,HttpSession session){
		
		UserDTO dto = (UserDTO)session.getAttribute("login");
		
		String url = null;
		
		
		if(dto != null) {
		Calendar cal = Calendar.getInstance();
		String m = String.valueOf(cal.get(Calendar.MARCH)+1);	
		String d= String.valueOf(cal.get(Calendar.DAY_OF_MONTH));	
		String day = m+"-"+d;
		
		CoinaddDTO cdto = new CoinaddDTO(dto.getId(),"Bit",bitsu,day,bitga);
		
		}
		
		
		

		ModelAndView mav = new ModelAndView();
		
		mav.setViewName("chart/chart");
		
		return mav;
	}
	
	
	
}
