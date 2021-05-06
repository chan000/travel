package org.ict.service;

import java.util.List;

import org.ict.domain.BoardVO;
import org.ict.domain.Criteria;
import org.ict.domain.SearchCriteria;

public interface BoardService {

	public List<BoardVO> docuList(Integer bno);

	public BoardVO get(Long bno);

	public List<BoardVO> getListPage(Integer bno, Criteria cri);

	public List<BoardVO> getListPageSearch(Integer bno, Criteria cri, SearchCriteria search);

	public int getCountPage(Integer bno);

	public int getCountPageSearch(Integer bno, SearchCriteria search);
}
