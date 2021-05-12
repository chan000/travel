package org.ict.mapper;

import java.util.List;

import org.ict.domain.SearchCriteria;
import org.ict.domain.SeoulVO;

public interface SeoulMapper {

	public List<SeoulVO> seoulList();
	public List<SeoulVO> tourRead(int sno);
	public List<SeoulVO> foodRead(int sno);
	
	public int countPageNum(SearchCriteria cri);
}
