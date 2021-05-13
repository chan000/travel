package org.ict.service;

import java.util.List;

import org.ict.domain.ListSearchCriteria;
import org.ict.domain.TourVO;

public interface TourService {
	
	public List<TourVO> getTourList(ListSearchCriteria cri);
	public TourVO getTourRead(int tbno);

	public int getCountPage(ListSearchCriteria cri);
}
