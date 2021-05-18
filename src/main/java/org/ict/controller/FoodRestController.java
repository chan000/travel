package org.ict.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.ict.domain.FoodVO;
import org.ict.domain.ListPageMaker;
import org.ict.domain.ListSearchCriteria;
import org.ict.service.FoodService;
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
public class FoodRestController {

	@Autowired
	private FoodService service;

	@GetMapping(value = "/foodsite/{page}", produces = { MediaType.APPLICATION_JSON_UTF8_VALUE })
	public ResponseEntity<Map<String, Object>> foodList(@PathVariable("page") int page, ListSearchCriteria cri) {
		ResponseEntity<Map<String, Object>> entity = null;

		Map<String, Object> result = new HashMap<>();

		cri.setPage(page);

		List<FoodVO> list = service.getFoodList(cri);
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

	@GetMapping(value = "/foodboardget/{fbno}", produces = { MediaType.APPLICATION_JSON_UTF8_VALUE })
	public ResponseEntity<FoodVO> tourRead(@PathVariable("fbno") int fbno) {

		ResponseEntity<FoodVO> entity = null;

		try {

			entity = new ResponseEntity<FoodVO>(service.getFoodRead(fbno), HttpStatus.OK);

		} catch (Exception e) {
			entity = new ResponseEntity<>(HttpStatus.BAD_REQUEST);

		}
		return entity;
	}

}
