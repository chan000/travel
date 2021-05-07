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
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@Controller
@RequestMapping("/board/*")
public class BoardController {

	@Autowired
	private BoardService service;
	
	@RequestMapping("/freeboard")
	public void freeboard(Model model, SearchCriteria cri) {
		model.addAttribute("freeboard", service.getList());
		model.addAttribute("cri", cri);
	}
	@GetMapping("/freeboardget")
	public void get(Long bno, Model model, SearchCriteria cri) {
		model.addAttribute("freeboard", service.get(bno));
		model.addAttribute("cri", cri);
	}
	
	@RequestMapping("/reviewboard")
	public void reviewboard(Model model, SearchCriteria cri) {
		model.addAttribute("freeboard", service.getList());
		model.addAttribute("cri", cri);
	}

}
