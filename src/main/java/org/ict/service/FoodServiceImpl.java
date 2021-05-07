package org.ict.service;

import java.util.List;

import org.ict.domain.FoodVO;
import org.ict.mapper.FoodMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class FoodServiceImpl implements FoodService{

	
	@Autowired
	private FoodMapper mapper;

	@Override
	public List<FoodVO> getFoodList() {
		return mapper.foodList();
	}

	@Override
	public FoodVO getFoodRead(int fno) {
		return mapper.foodRead(fno);
	}
	
}
