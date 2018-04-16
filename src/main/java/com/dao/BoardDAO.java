package com.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dto.CommentDTO;
import com.dto.BoardDTO;
import com.dto.PageDTO;
@Repository
public class BoardDAO {

	@Autowired
	SqlSessionTemplate template;
	
	//목록보기
	public PageDTO list(int curPage,HashMap<String,String> map){
        PageDTO pageDTO = new PageDTO();
		
		int start = (curPage-1)*pageDTO.getPerPage();	
		List<BoardDTO> xxx=  template.selectList("BoardMapper.boardList",map,
				new RowBounds(start, pageDTO.getPerPage()));
		
		pageDTO.setList(xxx);
		pageDTO.setCurPage(curPage);
	
		int totalCount = 0;
		if(map.get("searchValue")==null) {
			totalCount = totalCount();
		}else {
			totalCount = totalSearchCount(map);
		}
		pageDTO.setTotalCount(totalCount);
		
		pageDTO.setSearchName(map.get("searchName"));
		pageDTO.setSearchValue(map.get("searchValue"));
		
		return pageDTO;
	}
	
	public int totalCount() {
		return  template.selectOne("totalCount");
	}
	public int totalSearchCount(HashMap<String,String> map) {
		return  template.selectOne("totalSearchCount", map);
	}
     public void write(BoardDTO dto) {
		template.insert("BoardMapper.boardInsert",dto);
	} 
    
     
    public BoardDTO retrieve(int num) {
    	readCnt(num);
    	return template.selectOne("BoardMapper.boardRetrieve", num);
    }
    
    private void readCnt(int num) {
    	template.update("BoardMapper.readCnt",num);
    }
    public void delete(int num) {
		template.delete("BoardMapper.boardDelete",num);
	}
    
    public void update(BoardDTO dto) {
		template.update("BoardMapper.boardUpdate",dto);
	}
    public BoardDTO read(int num) {
    	readCnt(num);
    	return template.selectOne("BoardMapper.boardRead", num);
    }
    
    
    
    public void reply(BoardDTO dto) {
		template.insert("BoardMapper.boardReply",dto);
	}
    
    

    
    
    /*public List<BoardDTO> search(HashMap<String, String> map){
		return template.selectList("BoardMapper.search", map);
	}*/
    
    
    
}




