package org.ict.service;

import java.util.List;

import org.ict.domain.BoardVO;
import org.ict.domain.SearchCriteria;

public interface BoardService {

	public List<BoardVO> getList();

	public BoardVO get(Long bno);

	public void register(BoardVO board);
	
	boolean modify(BoardVO board);

	public boolean remove(Long bno);

	public List<BoardVO> getListPage(SearchCriteria cri);

	public int getCountPage(SearchCriteria cri);

}
