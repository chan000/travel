package org.ict.mapper;

import java.util.List;

import org.ict.domain.ListSearchCriteria;
import org.ict.domain.TourVO;

public interface TourMapper {
	
	public List<TourVO> tourList(ListSearchCriteria cri);
	
	public TourVO tourRead(int tno);
	
	public int countPageNum(ListSearchCriteria cri);

}
