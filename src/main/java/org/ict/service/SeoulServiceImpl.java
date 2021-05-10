package org.ict.service;

import java.util.List;

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
	public List<SeoulVO> getSeoulRead(int sno) {
		return mapper.seoulRead(sno);
	}
}
