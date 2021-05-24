package org.ict.service;

import java.util.List;

import org.ict.domain.ListSearchCriteria;
import org.ict.domain.TourVO;
import org.ict.mapper.TourMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class TourServiceImpl implements TourService{

	@Autowired
	TourMapper mapper;
	
	@Override
	public List<TourVO> getTourList(ListSearchCriteria cri) {
		return mapper.tourList(cri);
	}

	@Override
	public TourVO getTourRead(Integer tbno) {
		return mapper.tourRead(tbno);
	}

	@Override
	public int getCountPage(ListSearchCriteria cri) {
		return mapper.countPageNum(cri);
	}


	@Override
	public List<TourVO> getTourDetailList(int lno, ListSearchCriteria cri) {
		return mapper.tourDetailList(lno, cri);
	}

	@Override
	public int getCountLnoNum(int lno, ListSearchCriteria cri) {
		return mapper.countLnoNum(lno, cri);
	}

	




}
