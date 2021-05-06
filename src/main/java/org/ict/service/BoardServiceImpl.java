package org.ict.service;

import java.util.List;

import org.ict.domain.BoardVO;
import org.ict.domain.Criteria;
import org.ict.domain.SearchCriteria;
import org.ict.mapper.BoardMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class BoardServiceImpl implements BoardService{

	@Autowired
	private BoardMapper mapper;

	@Override
	public List<BoardVO> docuList(Integer bno) {
		return mapper.docuList(bno);
	}

	@Override
	public List<BoardVO> getListPage(Integer bno, Criteria cri) {
			return mapper.docuListPage(bno, cri);
	}

	@Override
	public BoardVO get(Long bno) {
		return mapper.read(bno);
	}

	@Override
	public List<BoardVO> getListPageSearch(Integer bno, Criteria cri, SearchCriteria search) {
		return mapper.docuListPageSearch(bno, cri, search);
	}

	@Override
	public int getCountPage(Integer bno) {
		return mapper.countPageNum(bno);
	}

	@Override
	public int getCountPageSearch(Integer bno, SearchCriteria search) {
		return mapper.countPageNumSearch(bno, search);
	}

	
	
	

}
