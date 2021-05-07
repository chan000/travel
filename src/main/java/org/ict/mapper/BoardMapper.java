package org.ict.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.ict.domain.BoardVO;
import org.ict.domain.Criteria;
import org.ict.domain.SearchCriteria;

public interface BoardMapper {

	public BoardVO read(Long bno);

	public List<BoardVO> getList();

	public int update(BoardVO board);

	public boolean delete(Long bno);
	
	public void insert(BoardVO board);
	public List<BoardVO> listPage(SearchCriteria cri);
	
	public int countPageNum(SearchCriteria cri);


	

}
