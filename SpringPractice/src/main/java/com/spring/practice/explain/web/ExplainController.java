package com.spring.practice.explain.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ExplainController {
	@RequestMapping("/allergy")
	public String allergy() {
		return "explain/allergy";
	}
	
	@RequestMapping("/allergy2")
	public String allergy2() {
		return "explain/allergy2";
	}
}
