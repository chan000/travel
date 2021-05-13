package org.ict.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.ict.domain.ModalCriteria;
import org.ict.domain.ModalPageMaker;
import org.ict.domain.SeoulVO;
import org.ict.service.SeoulService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import lombok.extern.log4j.Log4j;

@RestController
@RequestMapping("/city/*")
@Log4j
public class SeoulRestController {

	@Autowired
	SeoulService service;

	@GetMapping(value = "/seoulboard", produces = { MediaType.APPLICATION_JSON_UTF8_VALUE })
	public ResponseEntity<List<SeoulVO>> seoulList() {
		ResponseEntity<List<SeoulVO>> entity = null;

		try {
			entity = new ResponseEntity<List<SeoulVO>>(service.getSeoulList(), HttpStatus.OK);
		} catch (Exception e) {
			entity = new ResponseEntity<>(HttpStatus.BAD_REQUEST);
		}

		return entity;
	}

	@GetMapping(value = "/seoulboard/tour/{sno}/{page}", produces = { MediaType.APPLICATION_JSON_UTF8_VALUE })
	public ResponseEntity<Map<String, Object>> tourRead(
			@PathVariable("page") int page ,@PathVariable("sno") int sno) {

		
		
		ResponseEntity<Map<String, Object>> entity = null;
		
		Map<String, Object> result = new HashMap<>();
		
		ModalCriteria cri = new ModalCriteria();
		cri.setPage(page);
		
		List<SeoulVO> list = service.getTourRead(sno, cri);
		
		ModalPageMaker modalPageMaker = new ModalPageMaker();
		
		modalPageMaker.setCri(cri);
		modalPageMaker.setTotalBoard(service.boardCount(sno));
		
		result.put("list", list);
		result.put("pageMaker", modalPageMaker);
		result.put("cri", cri);
		
		log.info(modalPageMaker);

		try {
			entity = new ResponseEntity<Map<String, Object>>(result, HttpStatus.OK);

		} catch (Exception e) {
			entity = new ResponseEntity<>(HttpStatus.BAD_REQUEST);

		}
		return entity;
	}
	@GetMapping(value = "/seoulboard/food/{sno}", produces = { MediaType.APPLICATION_JSON_UTF8_VALUE })
	public ResponseEntity<List<SeoulVO>> foodRead(@PathVariable("sno") int sno) {

		ResponseEntity<List<SeoulVO>> entity = null;

		try {
			entity = new ResponseEntity<List<SeoulVO>>(service.getFoodRead(sno), HttpStatus.OK);

		} catch (Exception e) {
			entity = new ResponseEntity<>(HttpStatus.BAD_REQUEST);

		}
		return entity;
	}

}
