package org.ict.mapper;

import java.util.List;

import org.ict.domain.TourVO;

public interface TourMapper {
	
	public List<TourVO> tourList();
	
	public TourVO tourRead(int tno);

}
