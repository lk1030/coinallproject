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
import com.dto.PageDTO;
import com.service.BoardService;

@Controller
public class BoardController {
	
	@Autowired
	BoardService service;

	
	
	@RequestMapping("/list") //http://localhost:8090/app/list
	@ModelAttribute("pageDTO")
	public PageDTO list(@RequestParam(required=false ,defaultValue="1" )  int curPage,
			           @RequestParam HashMap<String,String> map) {
		
		PageDTO pageDTO = service.list(curPage,map);
		return pageDTO;  // list3.jsp
	}
	
	/*@RequestMapping("/listUI") //http://localhost:8090/app/list
	public ModelAndView listUI(@RequestParam(required=false ,defaultValue="1" )  int curPage,
			           @RequestParam HashMap<String,String> map) {
		
		service.list(curPage,map);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("list");
		return mav;  // list3.jsp
	}*/
	
	@RequestMapping(value="/write" , method=RequestMethod.POST)
	public String write(BoardDTO dto) {
		service.write(dto);
		return  "redirect:list";
	}
	
	/*@RequestMapping(value="/write" , method=RequestMethod.POST)
	public ModelAndView write(BoardDTO dto) {
		service.write(dto);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("redirect:list");
		return mav;
		
	}*/
	
	@RequestMapping(value="/retrieve" , method=RequestMethod.GET)
	@ModelAttribute("retrieve")// request.setAttribute("retrieve", dto );
	public BoardDTO retrieve(@RequestParam int num) {
		BoardDTO dto = service.retrieve(num);
		
		return  dto;

	}
	
	@RequestMapping(value="/read" , method=RequestMethod.GET)
	@ModelAttribute("read")
	public BoardDTO read(@RequestParam int num) {
		BoardDTO dto = service.read(num);
		
		return  dto;

	}
	
	/*@RequestMapping(value="/retrieve" , method=RequestMethod.GET)
	public ModelAndView retrieve(@RequestParam int num) {
		service.retrieve(num);
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("redirect:list");
		return mav;

	}*/
	
	@RequestMapping(value="/delete" , method=RequestMethod.GET)
	public String delete(@RequestParam int num) {
		 service.delete(num);
		return  "redirect:list";
	}
	
	/*@RequestMapping(value="/delete" , method=RequestMethod.GET)
	public ModelAndView delete(@RequestParam int num) {
		 service.delete(num);
		 ModelAndView mav = new ModelAndView();
			mav.setViewName("redirect:list");
			return mav;
	}*/
	
	@RequestMapping(value="/update" , method=RequestMethod.POST)
	public String update(BoardDTO dto) {
		service.update(dto);
		return  "redirect:list";
	}
	
	/*@RequestMapping(value="/update" , method=RequestMethod.POST)
	public ModelAndView update(BoardDTO dto) {
		service.update(dto);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("redirect:list");
		return mav;
	}*/
	
	@RequestMapping(value="/reply" , method=RequestMethod.POST)
	public String reply(BoardDTO dto) {
		service.reply(dto);
		return  "redirect:list";
		
	}
	
	/*@RequestMapping(value="/reply" , method=RequestMethod.POST)
	public ModelAndView reply(BoardDTO dto) {
		service.reply(dto);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("redirect:list");
		return mav;
	}*/
	
	
}





