package org.ict.service;

import java.util.List;

import org.ict.domain.CultureSearchCriteria;
import org.ict.domain.CultureVO;
import org.ict.domain.ListSearchCriteria;

public interface CultureService {

	public List<CultureVO> getCultureList(CultureSearchCriteria cri);

	public int getCountPage(CultureSearchCriteria cri);

	public CultureVO getCultureRead(Integer cbno);
}
