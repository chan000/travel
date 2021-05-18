package org.ict.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.ict.domain.CultureVO;
import org.ict.domain.ListPageMaker;
import org.ict.domain.ListSearchCriteria;
import org.ict.service.CultureService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;


@RestController
@RequestMapping("/board/*")
public class CultureRestController {

	@Autowired
	private CultureService service;

	@GetMapping(value = "/culturesite/{page}", produces = { MediaType.APPLICATION_JSON_UTF8_VALUE })
	public ResponseEntity<Map<String, Object>> cultureList(@PathVariable("page") int page, ListSearchCriteria cri) {
		ResponseEntity<Map<String, Object>> entity = null;

		Map<String, Object> result = new HashMap<>();

		cri.setPage(page);

		List<CultureVO> list = service.getCultureList(cri);
		int count = service.getCountPage(cri);

		ListPageMaker pageMaker = new ListPageMaker();

		pageMaker.setCri(cri);
		pageMaker.setTotalCount(count);

		result.put("list", list);
		result.put("pageMaker", pageMaker);

		try {
			entity = new ResponseEntity<Map<String, Object>>(result, HttpStatus.OK);
		} catch (Exception e) {
			entity = new ResponseEntity<>(HttpStatus.BAD_REQUEST);
		}

		return entity;
	}

	@GetMapping(value = "/cultureboardget/{cbno}", produces = { MediaType.APPLICATION_JSON_UTF8_VALUE })
	public ResponseEntity<CultureVO> tourRead(@PathVariable("cbno") Integer cbno) {

		ResponseEntity<CultureVO> entity = null;

		try {

			entity = new ResponseEntity<CultureVO>(service.getCultureRead(cbno), HttpStatus.OK);

		} catch (Exception e) {
			entity = new ResponseEntity<>(HttpStatus.BAD_REQUEST);

		}
		return entity;
	}

}
