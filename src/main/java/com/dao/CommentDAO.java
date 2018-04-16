package com.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dto.CommentDTO;
import com.dto.BoardDTO;
import com.dto.ComDTO;
import com.dto.PageDTO;
@Repository
public class CommentDAO {

	@Autowired
	SqlSessionTemplate template;
	
	
     public void writeComment(CommentDTO dto) {
		template.insert("CommentMapper.writeComment",dto);
	} 
    
     /*public CommentDTO readComments(int num) {
    	 CommentDTO dto = template.selectOne("CommentMapper.readComments", num);
    	 System.out.println(dto);
     	return template.selectOne("CommentMapper.readComments", num);
     }*/
     
     public ComDTO clist(HashMap<String,String> map){
    	 ComDTO comDTO = new ComDTO();
 		
 		List<CommentDTO> xxx=  template.selectList("CommentMapper.readComments",map);
 		
 		comDTO.setClist(xxx);
 		System.out.println(comDTO);
 		return comDTO;
 	}
   

    
    
    /*public List<BoardDTO> search(HashMap<String, String> map){
		return template.selectList("BoardMapper.search", map);
	}*/
    
    
    
}




