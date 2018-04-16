package com.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.dto.BoardDTO;
import com.dto.OneBoardDTO;
import com.dto.OneDTO;
import com.dto.PageDTO;
import com.service.BoardService;
import com.service.OneBoardService;

@Controller
public class OneBoardController {
	
	@Autowired
	OneBoardService service;

	
	
	@RequestMapping("/olist") //http://localhost:8090/app/list
	@ModelAttribute("OneDTO")
	public OneDTO olist(@RequestParam HashMap<String,String> map) {
		
		OneDTO oneDTO = service.olist(map);
		return oneDTO;  // list3.jsp
	}
	
	
	
	@RequestMapping(value="/onewrite" , method=RequestMethod.POST)
	public String onewrite(OneBoardDTO dto) {
		service.onewrite(dto);
		return  "redirect:olist";
	}
	
	
	
	
	
	@RequestMapping(value="/oneread" , method=RequestMethod.GET)
	@ModelAttribute("oneread")
	public OneBoardDTO oneread(@RequestParam int num) {
		OneBoardDTO dto = service.oneread(num);
		
		return  dto;

	}
	
	
	
	
	
}





