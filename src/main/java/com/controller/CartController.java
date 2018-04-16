package com.controller;

import java.util.Random;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

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
	
	//Alphacoin 가져오기
	@RequestMapping("/Alphacoin")
	public ModelAndView Alphacoin(HttpSession session){
		
		Random ran = new Random();
		
		int alphacoin=ran.nextInt(15000)+10000;
		
		session.setAttribute("alphacoin", alphacoin);
		
		ModelAndView mav = new ModelAndView();
		
		mav.setViewName("chart/alphacoin");
		
		return mav;
	}	
	//Betacoin 가져오기
	@RequestMapping("/Betacoin")
	public ModelAndView Betacoin(HttpSession session){
		
		Random ran = new Random();
		
		int alphacoin=ran.nextInt(15000)+10000;
		
		session.setAttribute("betacoin", alphacoin);
		
		ModelAndView mav = new ModelAndView();
		
		mav.setViewName("chart/betacoin");
		
		return mav;
	}
	//Chariecoin 가져오기
	@RequestMapping("/Chariecoin")
	public ModelAndView Chariecoin(HttpSession session){
		
		Random ran = new Random();
		
		int alphacoin=ran.nextInt(15000)+10000;
		
		session.setAttribute("chariecoin", alphacoin);
		
		ModelAndView mav = new ModelAndView();
		
		mav.setViewName("chart/chariecoin");
		
		return mav;
	}
	//Deltacoin 가져오기
	@RequestMapping("/Deltacoin")
	public ModelAndView Deltacoin(HttpSession session){
		
		Random ran = new Random();
		
		int alphacoin=ran.nextInt(15000)+10000;
		
		session.setAttribute("deltacoin", alphacoin);
		
		ModelAndView mav = new ModelAndView();
		
		mav.setViewName("chart/deltacoin");
		
		return mav;
	}
	
	//마이 페이지 구매 코인 출력
	@RequestMapping("/Purchase")
	public ModelAndView Purchase(PrchDTO pdto,HttpSession session ){
		
		UserDTO dto = (UserDTO)session.getAttribute("login");
		
		String url=null;
		
		ModelAndView mav = new ModelAndView();
		
		if(dto==null) {
			url = "login";
		}else if(dto != null) {
			String id = dto.getId();
			pdto.setId(id);
			session.setAttribute("prch", pdto);
			url = "forward:situationUI";
		}
		
		mav.setViewName(url);
		
		return mav;
	}
	
	
	
}
