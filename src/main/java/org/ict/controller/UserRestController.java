package org.ict.controller;


import org.ict.domain.UserVO;
import org.ict.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/myRest/*")
public class UserRestController {

	@Autowired
	private UserService service;

	@GetMapping(value = "/{uno}", produces = { MediaType.APPLICATION_JSON_UTF8_VALUE, MediaType.APPLICATION_XML_VALUE })
	public ResponseEntity<UserVO> detailMyInfO(@PathVariable("uno") Integer uno) {

		ResponseEntity<UserVO> entity = null;

		try {
			entity = new ResponseEntity<UserVO>(service.detailMyInfo(uno), HttpStatus.OK);
		} catch (Exception e) {
			entity = new ResponseEntity<UserVO>(HttpStatus.BAD_REQUEST);
		}
		return entity;
	}

	@RequestMapping(method = { RequestMethod.PUT,
			RequestMethod.PATCH }, value = "/modifyinfo/{uno}", consumes = "application/json", produces = MediaType.TEXT_PLAIN_VALUE)
	public ResponseEntity<String> modifyInfo(@RequestBody UserVO vo, @PathVariable("uno") Integer uno) {

		ResponseEntity<String> entity = null;

		try {
			vo.setUno(uno);
			service.modifyInfo(vo);
			entity = new ResponseEntity<String>("SUCCESS", HttpStatus.OK);
		} catch (Exception e) {
			entity = new ResponseEntity<String>(e.getMessage(), HttpStatus.BAD_REQUEST);
		}
		return entity;
	}

	@PostMapping(value = "/{uid}", consumes = "application/json", produces = {
			MediaType.APPLICATION_JSON_UTF8_VALUE })
	public ResponseEntity<UserVO> getIdCheck(@PathVariable String uid) {

		try {
			UserVO vo = service.getUserInfo(uid);
			return new ResponseEntity<UserVO>(vo, HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
			return new ResponseEntity<>(HttpStatus.BAD_REQUEST);
		}

	}

}
