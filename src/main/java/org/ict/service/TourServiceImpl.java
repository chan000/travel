package org.ict.service;

import java.util.List;

import org.ict.domain.SearchCriteria;
import org.ict.domain.TourVO;
import org.ict.mapper.TourMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class TourServiceImpl implements TourService{

	@Autowired
	TourMapper mapper;
	
	@Override
	public List<TourVO> getTourList(SearchCriteria cri) {
		return mapper.tourList(cri);
	}

	@Override
	public TourVO getTourRead(int tbno) {
		return mapper.tourRead(tbno);
	}

	@Override
	public int getCountPage(SearchCriteria cri) {
		return mapper.countPageNum(cri);
	}



}
