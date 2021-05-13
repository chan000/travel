package org.ict.controller;

import org.ict.domain.ModalCriteria;
import org.ict.domain.ModalPageMaker;
import org.ict.domain.PageMaker;
import org.ict.service.SeoulService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/city/*")
public class DoController {
	
	@Autowired
	private SeoulService service;
	
	@GetMapping("/seoulboard")
	public void seoul(Model model, ModalCriteria cri) {
		model.addAttribute("list", service.getSeoulList());
		//페이지네이터를 그리기 위해 처리 정보 전달
		ModalPageMaker pageMaker = new ModalPageMaker();
		// 현재 몇 페이지를 조회중인지 알아야 설정이 되므로
		
	}
	@GetMapping("/ggboard")
	public void gg() {
		
	}
	@GetMapping("/gwboard")
	public void gw() {
		
	}
	@GetMapping("/ccboard")
	public void cc() {
		
	}
	@GetMapping("/jlboard")
	public void jl() {
		
	}
	@GetMapping("/gsboard")
	public void gs() {
		
	}
	@GetMapping("/jejuboard")
	public void jeju() {
		
	}
	

}
