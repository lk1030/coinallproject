package com.controller;

import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.dto.CoinaddDTO;
import com.dto.UserDTO;
import com.service.UserService;

@Controller
public class MyPageController {

	@Autowired
	UserService service;
	
	//거래내역페이지 오픈
	@RequestMapping("/situationUI")
	   public ModelAndView situationUI(HttpSession session,HashMap<String,String> map){
	      
	      UserDTO dto = (UserDTO)session.getAttribute("login");
	      String id = (String)session.getAttribute("id");

	      
	      ModelAndView mav = new ModelAndView();
	      
	      String url = null;
	      
	      if(dto==null) {
	         url = "login";
	      }else if(dto != null) {
				map.put("id", id);
				map.put("coinname", "Bit");
	    	  CoinaddDTO bit = service.selectgubit(map);
	    	  
				map.put("id", id);
				map.put("coinname", "Two");
	    	  CoinaddDTO two = service.selectgutwo(map);
	    	  
				map.put("id", id);
				map.put("coinname", "Three");
	    	  CoinaddDTO three = service.selectguthree(map);
	    	  
				map.put("id", id);
				map.put("coinname", "Four");
	    	  CoinaddDTO four = service.selectgufour(map);
	    	  
				map.put("id", id);
				map.put("coinname", "Five");
	    	  CoinaddDTO five = service.selectgufive(map);
	    	  
				map.put("id", id);
				map.put("coinname", "Six");
	    	  CoinaddDTO six = service.selectgusix(map);
	    	  
				map.put("id", id);
				map.put("coinname", "Seven");
	    	  CoinaddDTO seven = service.selectguseven(map);
	    	  
				map.put("id", id);
				map.put("coinname", "Eight");
	    	  CoinaddDTO eight = service.selectgueight(map);
	    	  
				map.put("id", id);
				map.put("coinname", "Nine");
	    	  CoinaddDTO nine = service.selectgunine(map);
	    	  
				map.put("id", id);
				map.put("coinname", "Ten");
	    	  CoinaddDTO ten = service.selectguten(map);
	    	  
	    	  
	    	  session.setAttribute("bit", bit);
	    	  session.setAttribute("two", two);
	    	  session.setAttribute("three", three);
	    	  session.setAttribute("four", four);
	    	  session.setAttribute("five", five);
	    	  session.setAttribute("six", six);
	    	  session.setAttribute("seven", seven);
	    	  session.setAttribute("eight", eight);
	    	  session.setAttribute("nine", nine);
	    	  session.setAttribute("ten", ten);
	    	      	  
	    	  String allcount =String.valueOf(service.selectidcoin(id));

	    	  session.setAttribute("allcount", allcount);
		        int cdto = service.cashselect(id);
		        session.setAttribute("cashselect", cdto);
	         url = "mypage/situation";
	      }
	         
	      mav.setViewName(url);
	      
	      return mav;
	   }
	
}
