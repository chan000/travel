package org.ict.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.ict.domain.CultureSearchCriteria;
import org.ict.domain.CultureVO;
import org.ict.domain.ListSearchCriteria;

public interface CultureMapper {

	public List<CultureVO> cultureList(@Param("cri")CultureSearchCriteria cri);
	
	public CultureVO cultureRead(Integer cbno);
	
	public int countPageNum(CultureSearchCriteria cri);
	
}
