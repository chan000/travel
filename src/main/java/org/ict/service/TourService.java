package org.ict.service;

import java.util.List;

import org.ict.domain.TourVO;

public interface TourService {
	
	public List<TourVO> getTourList();
	public TourVO getTourRead(int tbno);

}
