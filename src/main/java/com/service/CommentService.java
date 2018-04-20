package com.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.BoardDAO;
import com.dao.CommentDAO;
import com.dto.BoardDTO;
import com.dto.ComDTO;
import com.dto.CommentDTO;
import com.dto.PageDTO;

@Service
public class CommentService {

	@Autowired
	CommentDAO dao;
	

	
	public void writeComment(CommentDTO dto) {
		dao.writeComment(dto);
	}
	
	
	public ComDTO clist(HashMap<String,String> map){
		return dao.clist(map);
	}
}



