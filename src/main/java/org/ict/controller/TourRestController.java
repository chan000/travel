package org.ict.controller;


import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.ict.domain.ListPageMaker;
import org.ict.domain.ListSearchCriteria;
import org.ict.domain.TourVO;
import org.ict.service.TourService;
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
public class TourRestController {
	
	@Autowired
	private TourService service;
	
	@GetMapping(value = "/toursite", produces = { MediaType.APPLICATION_JSON_UTF8_VALUE })
	public ResponseEntity<Map<String, Object>> tourList(ListSearchCriteria cri) {
		ResponseEntity<Map<String, Object>> entity = null;
		
		Map<String, Object> result = new HashMap<>();
		
		
		
		ListPageMaker pageMaker = new ListPageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(service.getCountPage(cri));
		
		List<TourVO> list = service.getTourList(cri);
		
		result.put("list", list);
		result.put("pageMaker", pageMaker);
		

		try {
			entity = new ResponseEntity<Map<String, Object>>(result, HttpStatus.OK);
		} catch (Exception e) {
			entity = new ResponseEntity<>(HttpStatus.BAD_REQUEST);
		}

		return entity;
	}

	@GetMapping(value = "/tourboardget/{tbno}", produces = { MediaType.APPLICATION_JSON_UTF8_VALUE })
	public ResponseEntity<TourVO> tourRead(@PathVariable("tbno") int tbno) {

		ResponseEntity<TourVO> entity = null;

		try {
			entity = new ResponseEntity<TourVO>(service.getTourRead(tbno), HttpStatus.OK);

		} catch (Exception e) {
			entity = new ResponseEntity<>(HttpStatus.BAD_REQUEST);

		}
		return entity;
	}

}
