package org.ict.service;

import java.util.List;

import org.ict.domain.FoodVO;
import org.ict.domain.ListSearchCriteria;

public interface FoodService {

	public List<FoodVO> getFoodList(ListSearchCriteria cri);
	
	public int getCountPage(ListSearchCriteria cri);

	public FoodVO getFoodRead(Integer fbno);
}
