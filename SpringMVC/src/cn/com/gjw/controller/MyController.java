package cn.com.gjw.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MyController {

	@RequestMapping(value="/hello")
	public String hello() {
		
		return "hello";
	}
	
	@RequestMapping(value="/hello1")
	public String hello1() {
		
		return "index";
	}
}
