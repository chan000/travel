package org.ict.controller;

import java.util.List;

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

@RestController
@RequestMapping("/city/*")
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

	@GetMapping(value = "/seoulboard/{sno}", produces = { MediaType.APPLICATION_JSON_UTF8_VALUE })
	public ResponseEntity<List<SeoulVO>> seoulRead(@PathVariable("sno") int sno) {

		ResponseEntity<List<SeoulVO>> entity = null;

		try {
			entity = new ResponseEntity<List<SeoulVO>>(service.getSeoulRead(sno), HttpStatus.OK);

		} catch (Exception e) {
			entity = new ResponseEntity<>(HttpStatus.BAD_REQUEST);

		}
		return entity;
	}

}
