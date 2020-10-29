package myPackage.springdemo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/request")
public class TestController {
	
	@RequestMapping("/test")
	public String listRequest(Model model)
	{
		return "index";
	}
}
