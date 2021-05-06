package org.ict.controller;

import org.ict.service.BoardService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/board/*")
public class BoardController {

	@Autowired
	private BoardService service;
	
	@GetMapping("/freeboard")
	public void freeboard(Model model) {
		model.addAttribute("list",service.getList());
	}
	@GetMapping("/toursite")
	public void tour(Model model) {
		model.addAttribute("list",service.getList());
	}
	@GetMapping("/foodsite")
	public void food(Model model) {
		model.addAttribute("list",service.getList());
	}
	@GetMapping("/culturesite")
	public void culture(Model model) {
		model.addAttribute("list",service.getList());
	}
	@GetMapping("/reviewboard")
	public void review(Model model) {
		model.addAttribute("list",service.getList());
	}
	@GetMapping("/freeboardregi")
	public void freeregister(Model model) {
		model.addAttribute("list",service.getList());
	}
}
