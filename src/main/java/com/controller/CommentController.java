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
import com.dto.ComDTO;
import com.dto.CommentDTO;
import com.dto.PageDTO;
import com.service.BoardService;
import com.service.CommentService;

@Controller
public class CommentController {
	
	@Autowired
	CommentService service;
	

	
	
	
	
	@RequestMapping(value="/writeComment" , method=RequestMethod.POST)
	public String writeComment(CommentDTO dto) {
		service.writeComment(dto);
		return  "redirect:list";
	}
	
	/*@RequestMapping(value="/readComments" , method=RequestMethod.GET)
	@ModelAttribute("readComments")
	public CommentDTO readComment(@RequestParam int num) {
		CommentDTO dto = service.readComments(num);
		
		return  dto;

	}*/
	
	@RequestMapping("/clist") //http://localhost:8090/app/list
	@ModelAttribute("ComDTO")
	public ComDTO clist(@RequestParam HashMap<String,String> map) {
		
		ComDTO comDTO = service.clist(map);
		return comDTO;  // list3.jsp
	}
	
	
}





