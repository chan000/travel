package org.ict.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/city/*")
public class DoController {
	
	@GetMapping("/seoulboard")
	public void seoul() {
		
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
