package org.ict.service;

import java.util.List;

import org.ict.domain.SeoulVO;

public interface SeoulService {

	public List<SeoulVO> getSeoulList();
	public List<SeoulVO> getTourRead(int sno);
	public List<SeoulVO> getFoodRead(int sno);
}
