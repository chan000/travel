package org.ict.service;

import java.util.List;

import org.ict.domain.ListSearchCriteria;
import org.ict.domain.TourVO;

public interface TourService {
	
	public List<TourVO> getTourList(ListSearchCriteria cri);
	
	public List<TourVO> getTourDetailList(int lno, ListSearchCriteria cri);
	
	public TourVO getTourRead(Integer tbno);

	public int getCountPage(ListSearchCriteria cri);
	
	public int getCountLnoNum(int lno, ListSearchCriteria cri);
}
