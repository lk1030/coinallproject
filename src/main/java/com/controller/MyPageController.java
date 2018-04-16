package com.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.dto.UserDTO;
import com.service.UserService;

@Controller
public class MyPageController {

	@Autowired
	UserService service;
	
	//거래내역페이지 오픈
	@RequestMapping("/situationUI")
	   public ModelAndView situationUI(HttpSession session){
	      
	      UserDTO dto = (UserDTO)session.getAttribute("login");
	      

	      
	      ModelAndView mav = new ModelAndView();
	      
	      String url = null;
	      
	      if(dto==null) {
	         url = "login";
	      }else if(dto != null) {
	         String id = (String)session.getAttribute("id");
	         int cdto = service.cashselect(id);
	         session.setAttribute("cashselect", cdto);
	         url = "mypage/situation";
	      }
	         
	      mav.setViewName(url);
	      
	      return mav;
	   }
	
}
