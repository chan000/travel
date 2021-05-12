package org.ict.mapper;

import java.util.List;

import org.ict.domain.SearchCriteria;
import org.ict.domain.TourVO;

public interface TourMapper {
	
	public List<TourVO> tourList(SearchCriteria cri);
	
	public TourVO tourRead(int tno);
	
	public int countPageNum(SearchCriteria cri);

}
