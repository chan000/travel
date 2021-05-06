package org.ict.service;

import java.util.List;

import org.ict.domain.FoodVO;

public interface FoodService {

	public List<FoodVO> getFoodList();
	
	public FoodVO getFoodRead(int fno);
}
