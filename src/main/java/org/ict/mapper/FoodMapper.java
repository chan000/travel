package org.ict.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.ict.domain.FoodVO;
import org.ict.domain.ListSearchCriteria;

public interface FoodMapper {

	public List<FoodVO> foodList(@Param("cri")ListSearchCriteria cri);
	
	public FoodVO foodRead(int fbno);
	
	public int countPageNum(ListSearchCriteria cri);
	
	public List<FoodVO> List(Integer lno);
	
}
