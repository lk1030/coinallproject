package com.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.BoardDAO;
import com.dto.BoardDTO;
import com.dto.CommentDTO;
import com.dto.PageDTO;

@Service
public class BoardService {

	@Autowired
	BoardDAO dao;
	
	public PageDTO list(int curPage , HashMap<String,String> map){
		return dao.list(curPage , map);
	}
	
	public void write(BoardDTO dto) {
		dao.write(dto);
	}
	
	
	
	public BoardDTO retrieve(int num) {
		return dao.retrieve(num);
	}
	 public void delete(int num) {
		 dao.delete(num);
	 }
	 public void update(BoardDTO dto) {
		 dao.update(dto);
	 }
	 public BoardDTO read(int num) {
		 return dao.read(num);
		}
	 
	 public void reply(BoardDTO dto) {
			dao.reply(dto);
		}
	 /*public List<BoardDTO> search(HashMap<String, String> map){
		 return dao.search(map);
	 }*/
}



