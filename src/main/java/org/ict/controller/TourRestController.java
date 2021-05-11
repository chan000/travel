package org.ict.controller;


import java.util.List;

import org.ict.domain.SeoulVO;
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
	public ResponseEntity<List<TourVO>> seoulList() {
		ResponseEntity<List<TourVO>> entity = null;

		try {
			entity = new ResponseEntity<List<TourVO>>(service.getTourList(), HttpStatus.OK);
		} catch (Exception e) {
			entity = new ResponseEntity<>(HttpStatus.BAD_REQUEST);
		}

		return entity;
	}

	@GetMapping(value = "/tourboardget/{tbno}", produces = { MediaType.APPLICATION_JSON_UTF8_VALUE })
	public ResponseEntity<TourVO> seoulRead(@PathVariable("tbno") int tbno) {

		ResponseEntity<TourVO> entity = null;

		try {
			entity = new ResponseEntity<TourVO>(service.getTourRead(tbno), HttpStatus.OK);

		} catch (Exception e) {
			entity = new ResponseEntity<>(HttpStatus.BAD_REQUEST);

		}
		return entity;
	}

}
