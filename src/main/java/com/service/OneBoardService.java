package com.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.BoardDAO;
import com.dao.OneBoardDAO;
import com.dto.BoardDTO;
import com.dto.CommentDTO;
import com.dto.OneBoardDTO;
import com.dto.OneDTO;
import com.dto.PageDTO;

@Service
public class OneBoardService {

	@Autowired
	OneBoardDAO dao;
	
	public OneDTO olist(HashMap<String,String> map){
		return dao.olist(map);
	}
	
	public void onewrite(OneBoardDTO dto) {
		dao.onewrite(dto);
	}
	
	public OneBoardDTO oneread(int num) {
		 return dao.oneread(num);
		}
	 
}



