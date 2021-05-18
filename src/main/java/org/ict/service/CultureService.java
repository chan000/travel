package org.ict.service;

import java.util.List;

import org.ict.domain.CultureVO;
import org.ict.domain.ListSearchCriteria;

public interface CultureService {

	public List<CultureVO> getCultureList(ListSearchCriteria cri);

	public int getCountPage(ListSearchCriteria cri);

	public CultureVO getCultureRead(Integer cbno);
}
