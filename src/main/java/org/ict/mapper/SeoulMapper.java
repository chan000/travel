package org.ict.mapper;

import java.util.List;

import org.ict.domain.SeoulVO;

public interface SeoulMapper {

	public List<SeoulVO> seoulList();
	public SeoulVO seoulRead(int sno);
}
