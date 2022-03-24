package com.mulcam.miniproj.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MainController {

	
	@GetMapping(value = "index")
	public String home() {		
		return "index";
	}
	@GetMapping(value="error")
	public String error() {
		return "error";
	}
}
