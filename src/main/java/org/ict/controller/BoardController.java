package org.ict.controller;

import org.ict.domain.BoardVO;
import org.ict.domain.ListSearchCriteria;
import org.ict.domain.PageMaker;
import org.ict.domain.SearchCriteria;
import org.ict.service.BoardService;
import org.ict.service.CultureService;
import org.ict.service.FoodService;
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

	@Autowired
	private FoodService foodservice;

	@Autowired
	private CultureService cultureservice;

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

	// 관광 게시판 리스트
	@RequestMapping("/toursite")
	public void toursite(Model model, ListSearchCriteria cri) {
		model.addAttribute("tourlist", tourservice.getTourList(cri));
	}

	// 관광 상세 게시판
	@RequestMapping("/tourboardget")
	public void tourboardget(Model model, Integer tbno) {
		model.addAttribute("tourget", tourservice.getTourRead(tbno));
	}

	// 음식 게시판 리스트
	@RequestMapping("/foodsite")
	public void foodsite(Model model, ListSearchCriteria cri) {
		model.addAttribute("foodlist", foodservice.getFoodList(cri));
	}

	// 음식 상세 게시판
	@RequestMapping("/foodboardget")
	public void foodboardget(Model model, Integer fbno) {
		model.addAttribute("foodget", foodservice.getFoodRead(fbno));
	}

	// 문화 게시판 리스트
	@RequestMapping("/culturesite")
	public void culturesite(Model model, ListSearchCriteria cri) {
		model.addAttribute("culturelist", cultureservice.getCultureList(cri));
	}

	// 문화 상세 게시판
	@RequestMapping("/cultureboardget")
	public void cultureboardget(Model model, Integer cbno) {
		model.addAttribute("foodget", cultureservice.getCultureRead(cbno));
	}

}
