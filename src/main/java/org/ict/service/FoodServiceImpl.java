package org.ict.service;

import java.util.List;

import org.ict.domain.FoodVO;
import org.ict.domain.ListSearchCriteria;
import org.ict.mapper.FoodMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class FoodServiceImpl implements FoodService{

	
	@Autowired
	private FoodMapper mapper;

	@Override
	public List<FoodVO> getFoodList(ListSearchCriteria cri) {
		return mapper.foodList(cri);
	}

	@Override
	public FoodVO getFoodRead(Integer fbno) {
		return mapper.foodRead(fbno);
	}

	@Override
	public int getCountPage(ListSearchCriteria cri) {
		return mapper.countPageNum(cri);
	}

	@Override
	public List<FoodVO> getList(Integer lno) {
		return mapper.List(lno);
	}

	
	
}
