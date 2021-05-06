package org.ict.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.ict.domain.BoardVO;
import org.ict.domain.Criteria;
import org.ict.domain.SearchCriteria;

public interface BoardMapper {

	public BoardVO read(Long bno);

	public List<BoardVO> docuList(Integer bno);

	public int update(BoardVO board);

	public boolean delete(Long bno);

	public List<BoardVO> docuListPage(@Param("bno") Integer bno, @Param("cri") Criteria cri);

	public int countPageNum(Integer bno);

	public List<BoardVO> docuListPageSearch(@Param("bno") Integer bno, @Param("cri") Criteria cri,
			@Param("search") SearchCriteria search);

	public int countPageNumSearch(@Param("bno") Integer bno, @Param("search") SearchCriteria search);

}
