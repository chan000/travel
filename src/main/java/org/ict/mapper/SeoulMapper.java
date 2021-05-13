package org.ict.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.ict.domain.ModalCriteria;
import org.ict.domain.SearchCriteria;
import org.ict.domain.SeoulVO;

public interface SeoulMapper {

	public List<SeoulVO> seoulList();
	public List<SeoulVO> tourRead(@Param("sno")int sno, @Param("cri")ModalCriteria cri);
	public List<SeoulVO> foodRead(int sno);
	
	
	
	
	public int boardCount(int sno);
}
