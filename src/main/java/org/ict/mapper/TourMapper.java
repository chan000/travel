package org.ict.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.ict.domain.ListSearchCriteria;
import org.ict.domain.TourVO;

public interface TourMapper {
	
	public List<TourVO> tourList(@Param("cri")ListSearchCriteria cri);
	
	public List<TourVO> tourDetailList(@Param("lno") int lno ,@Param("cri")ListSearchCriteria cri);
	
	public TourVO tourRead(int tno);
	
	public int countPageNum(ListSearchCriteria cri);
	
	public int countLnoNum(int lno,ListSearchCriteria cri);

}
