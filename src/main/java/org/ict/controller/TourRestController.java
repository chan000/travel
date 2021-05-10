package org.ict.controller;

import java.util.List;

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
@RequestMapping("/city/*")
public class TourRestController {

	@Autowired
	TourService service;

	@GetMapping(value = "/seoulboard", produces = {MediaType.APPLICATION_JSON_UTF8_VALUE})
	public ResponseEntity<List<TourVO>> tourList() {
		ResponseEntity<List<TourVO>> entity = null;

		try {
			entity = new ResponseEntity<List<TourVO>>(service.getTourList(), HttpStatus.OK);
		} catch (Exception e) {
			entity = new ResponseEntity<>(HttpStatus.BAD_REQUEST);
		}

		return entity;
	}

	@GetMapping(value = "/seoulboard/{tno}",produces = {MediaType.APPLICATION_JSON_UTF8_VALUE})
	public ResponseEntity<TourVO> tourRead(@PathVariable("tno") int tno) {

		ResponseEntity<TourVO> entity = null;

		try {
			entity = new ResponseEntity<TourVO>(service.getTourRead(tno), HttpStatus.OK);

		} catch (Exception e) {
			entity = new ResponseEntity<>(HttpStatus.BAD_REQUEST);

		}
		return entity;
	}

}
