package org.ict.controller;

import java.util.List;

import org.ict.domain.FoodVO;
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
@RequestMapping("/city/*")
public class FoodController {

	@Autowired
	private FoodService service;
	
	
	@GetMapping(value="/ccboard", produces= { MediaType.APPLICATION_JSON_UTF8_VALUE })
	public ResponseEntity<List<FoodVO>> foodList(){
		ResponseEntity<List<FoodVO>> entity = null;
		
		try {
			entity = new ResponseEntity<List<FoodVO>>(service.getFoodList(), HttpStatus.OK);
		}catch (Exception e) {
	         entity = new ResponseEntity<>(HttpStatus.BAD_REQUEST);
		}
		
		return entity;
		
		
	}
	
	@GetMapping(value="/ccboard/{fno}")
	public ResponseEntity<FoodVO> foodRead(@PathVariable("fno") int fno){
		
		ResponseEntity<FoodVO> entity = null;
		
		
		try {
			entity = new ResponseEntity<FoodVO>(service.getFoodRead(fno), HttpStatus.OK);
			
		}catch (Exception e) {
			entity = 
					new ResponseEntity<>(HttpStatus.BAD_REQUEST);
			
		}
		
		
		return entity;
	}
	
	
	
}
