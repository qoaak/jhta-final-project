package kr.co.hangsho.privatedeal.merona.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.hangsho.categories.vo.MiddleCategory;

@Controller
@RequestMapping("/merona")
public class MeronaController {
	
	@RequestMapping("/index.do")
	public String home() {
		return "/privatedeal/merona/index";
	}
	
	@RequestMapping("/detail.do")
	public String detail() {
		return "/privatedeal/merona/detail";
	}
	
}