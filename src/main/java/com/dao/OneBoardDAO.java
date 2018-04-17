package com.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dto.CommentDTO;
import com.dto.OneBoardDTO;
import com.dto.OneDTO;
import com.dto.BoardDTO;
import com.dto.PageDTO;
@Repository
public class OneBoardDAO {

	@Autowired
	SqlSessionTemplate template;
	
	//목록보기
	public OneDTO olist(HashMap<String,String> map){
		OneDTO oneDTO = new OneDTO();
		
		List<OneBoardDTO> xxx=  template.selectList("OneBoardMapper.oneboardList",map);
		
		oneDTO.setOlist(xxx);
	
		
		return oneDTO;
	}
	
	
	
     public void onewrite(OneBoardDTO dto) {
		template.insert("OneBoardMapper.oneboardInsert",dto);
	} 
     public void onereply(OneBoardDTO dto) {
    	 template.update("OneBoardMapper.oneboardreplyInsert",dto);
 	} 
    
     public OneBoardDTO oneread(int num) {
    	return template.selectOne("OneBoardMapper.oneboardRead", num);
    }
    
    
    
   
    
    

    
    
    /*public List<BoardDTO> search(HashMap<String, String> map){
		return template.selectList("BoardMapper.search", map);
	}*/
    
    
    
}




