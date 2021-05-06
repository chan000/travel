package org.ict.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.ict.domain.BoardVO;
import org.ict.domain.Criteria;
import org.ict.domain.PageMaker;
import org.ict.domain.SearchCriteria;
import org.ict.service.BoardService;
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
public class BoardRestController {

	@Autowired
	private BoardService service;

	@GetMapping(value = "/docu/{bno}/{page}", produces = { MediaType.APPLICATION_XML_VALUE,
			MediaType.APPLICATION_JSON_UTF8_VALUE })
	public ResponseEntity<Map<String, Object>> docuListPage(@PathVariable("bno") Integer bno,
			@PathVariable("page") int page) {
		ResponseEntity<Map<String, Object>> entity = null;

		Map<String, Object> result = new HashMap<>();

		Criteria cri = new Criteria();
		cri.setPage(page);
		List<BoardVO> list = service.getListPage(bno, cri);

		int count = service.getCountPage(bno);

		PageMaker pageMaker = new PageMaker();
		pageMaker = new PageMaker();

		pageMaker.setCri(cri);
		pageMaker.setTotalCount(count);

		result.put("list", list);
		result.put("pageMaker", pageMaker);

		try {
			entity = new ResponseEntity<Map<String, Object>>(result, HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<>(HttpStatus.BAD_REQUEST);
		}
		return entity;
	}

	@GetMapping(value = "/freeboard/{bno}/{page}/{searchType}/{keyword}", produces = { MediaType.APPLICATION_XML_VALUE,
			MediaType.APPLICATION_JSON_UTF8_VALUE })
	public ResponseEntity<Map<String, Object>> docuListPageSearch(@PathVariable("bno") Integer bno,
			@PathVariable("docu") int page, @PathVariable("searchType") String searchType,
			@PathVariable("keyword") String keyword) {

		ResponseEntity<Map<String, Object>> entity = null;

		Map<String, Object> result = new HashMap<>();

		Criteria cri = new Criteria();
		cri.setPage(page);

		SearchCriteria search = new SearchCriteria();
		search.setSearchType(searchType);
		search.setKeyword(keyword);

		List<BoardVO> list = service.getListPageSearch(bno, cri, search);

		int count = service.getCountPageSearch(bno, search);

		PageMaker pageMaker = new PageMaker();

		pageMaker.setCri(cri);
		pageMaker.setTotalCount(count);

		result.put("list", list);
		result.put("pageMaker", pageMaker);
		result.put("cri", cri);

		try {
			entity = new ResponseEntity<Map<String, Object>>(result, HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<>(HttpStatus.BAD_REQUEST);
		}
		return entity;
	}
}
