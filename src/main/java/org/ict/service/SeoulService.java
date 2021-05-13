package org.ict.service;

import java.util.List;

import org.ict.domain.ModalCriteria;
import org.ict.domain.SeoulVO;

public interface SeoulService {
	

	public List<SeoulVO> getSeoulList();
	public List<SeoulVO> getTourRead(int sno, ModalCriteria cri);
	public List<SeoulVO> getFoodRead(int sno);
	
	public int boardCount(int sno);
}
