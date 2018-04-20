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
	

	
	
	
}
