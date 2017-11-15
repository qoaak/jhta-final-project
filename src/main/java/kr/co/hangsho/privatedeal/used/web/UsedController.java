package kr.co.hangsho.privatedeal.used.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/used")
public class UsedController {
	
	@RequestMapping("/index.do")
	public String home() {
		return "/privatedeal/used/index";
	}	
	
	@RequestMapping("/detail.do")
	public String detail() {
		return "/privatedeal/used/detail";
	}
}
