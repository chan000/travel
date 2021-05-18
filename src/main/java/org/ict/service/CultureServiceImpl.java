package org.ict.service;

import java.util.List;

import org.ict.domain.CultureVO;
import org.ict.domain.ListSearchCriteria;
import org.ict.mapper.CultureMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CultureServiceImpl implements CultureService {

	@Autowired
	private CultureMapper mapper;

	@Override
	public List<CultureVO> getCultureList(ListSearchCriteria cri) {
		return mapper.cultureList(cri);
	}

	@Override
	public int getCountPage(ListSearchCriteria cri) {
		return mapper.countPageNum(cri);
	}

	@Override
	public CultureVO getCultureRead(Integer cbno) {

		return mapper.cultureRead(cbno);
	}

}
