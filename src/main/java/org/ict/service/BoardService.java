package org.ict.service;

import java.util.List;

import org.ict.domain.BoardVO;

public interface BoardService {

	public List<BoardVO> getList();

	public BoardVO get(Long bno);
	
	public void register(BoardVO board);
	
	public boolean remove(Long bno);
	
	public List<BoardVO> getListPage(SearchCriteria cri);
	public int getCountPage(SearchCriteria cri);
	


}
