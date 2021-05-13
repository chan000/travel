package org.ict.service;

import java.util.List;

import org.ict.domain.ModalCriteria;
import org.ict.domain.SeoulVO;
import org.ict.mapper.SeoulMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class SeoulServiceImpl implements SeoulService{

	@Autowired
	SeoulMapper mapper;

	@Override
	public List<SeoulVO> getSeoulList() {
		return mapper.seoulList();
	}

	@Override
	public List<SeoulVO> getTourRead(int sno, ModalCriteria cri) {
		return mapper.tourRead(sno , cri);
	}

	@Override
	public List<SeoulVO> getFoodRead(int sno) {
		return mapper.foodRead(sno);
	}


	@Override
	public int boardCount(int sno) {
		return mapper.boardCount(sno);
	}



}
