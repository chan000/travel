package org.ict.controller;

import org.ict.domain.BoardVO;
import org.ict.domain.ListSearchCriteria;
import org.ict.domain.PageMaker;
import org.ict.domain.SearchCriteria;
import org.ict.service.BoardService;
import org.ict.service.TourService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
@RequestMapping("/board/*")
public class BoardController {

	@Autowired
	private BoardService service;
	
	@Autowired
	private TourService tourservice;
	
	@RequestMapping("/freeboard")
	public void freeboard(Model model, SearchCriteria cri) {
		model.addAttribute("freeboard", service.getListPage(cri));
		model.addAttribute("cri", cri);
		PageMaker pageMaker = new PageMaker();
		
		pageMaker.setCri(cri);
		pageMaker.setTotalBoard(service.getCountPage(cri));
		model.addAttribute("pageMaker", pageMaker);
	}
	@GetMapping("/freeboardget")
	public void get(Long bno, Model model, SearchCriteria cri) {
		model.addAttribute("freeboard", service.get(bno));
		model.addAttribute("cri", cri);
	}
	
	@PostMapping("/freeboardregi")
	public String register(BoardVO board, SearchCriteria cri, RedirectAttributes rttr) {
		service.register(board);
		
		rttr.addFlashAttribute("result", board.getBno());
		
		return "redirect:/board/freeboard";
	}
	
	@GetMapping("freeboardregi")
	public String register() {
		return "/board/freeboardregi";
	}
	
	
	@RequestMapping("/reviewboard")
	public void reviewboard(Model model, SearchCriteria cri) {
		model.addAttribute("freeboard", service.getList());
		model.addAttribute("cri", cri);
	}
	@RequestMapping("/toursite")
	public void toursite(Model model, ListSearchCriteria cri) {
		
	}
	@RequestMapping("/tourboardget")
	public void tourboardget(Model model) {
//		model.addAttribute("tourget", tourservice.getTourRead(tbno));
	}

}
