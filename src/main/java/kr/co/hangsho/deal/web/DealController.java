package kr.co.hangsho.deal.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/deal")
public class DealController {
	
	@RequestMapping("/detail.do")
	public String home() {
		return "/privatedeal/dealdetail";
	}
}
