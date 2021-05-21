package org.ict.service;

import java.util.List;

import org.ict.domain.BoardVO;
import org.ict.domain.SearchCriteria;
import org.ict.mapper.BoardMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class BoardServiceImpl implements BoardService {

	@Autowired
	private BoardMapper mapper;

	@Override
	public List<BoardVO> getList() {
		return mapper.getList();
	}

	@Override
	public BoardVO get(Long bno) {
		return mapper.read(bno);
	}

	@Override
	public void register(BoardVO board) {

	}

	@Override
	public boolean remove(Long bno) {
		return mapper.delete(bno);
	}

	@Override
	public List<BoardVO> getListPage(SearchCriteria cri) {
		return mapper.listPage(cri);
	}

	@Override
	public int getCountPage(SearchCriteria cri) {
		return mapper.countPageNum(cri);
	}

	@Override
	public boolean modify(BoardVO board) {
		return mapper.update(board);
	}

}
