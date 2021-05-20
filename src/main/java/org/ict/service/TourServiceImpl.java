package org.ict.service;

import java.util.List;

import org.ict.domain.ListSearchCriteria;
import org.ict.domain.TourVO;
import org.ict.mapper.TourMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

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
	public int getCountSNum(ListSearchCriteria cri) {
		return mapper.countSNum(cri);
	}

	@Override
	public int getCountGGNum(ListSearchCriteria cri) {
		return mapper.countGGNum(cri);
	}

	@Override
	public int getCountGWNum(ListSearchCriteria cri) {
		return mapper.countGWNum(cri);
	}

	@Override
	public int getCountCCNum(ListSearchCriteria cri) {
		return mapper.countCCNum(cri);
	}

	




}
