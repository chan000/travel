package org.ict.mapper;

import java.util.List;

import org.ict.domain.FoodVO;

public interface FoodMapper {

	public List<FoodVO> foodList();
	
	public FoodVO foodRead(int fno);
	
}
