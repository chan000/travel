package org.ict.service;

import java.util.List;

import org.ict.domain.SearchCriteria;
import org.ict.domain.TourVO;

public interface TourService {
	
	public List<TourVO> getTourList(SearchCriteria cri);
	public TourVO getTourRead(int tbno);

	public int getCountPage(SearchCriteria cri);
}
