package org.ict.controller;

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
	public void seoul(Model model) {
		model.addAttribute("list", service.getSeoulList());
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
