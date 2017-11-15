package kr.co.hangsho.privatedeal.merona.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.hangsho.categories.vo.MiddleCategory;
import kr.co.hangsho.privatedeal.service.PrivatedealService;
import kr.co.hangsho.privatedeal.vo.Privatedeal;

@Controller
@RequestMapping("/merona")
public class MeronaController {
	
	@Autowired
	PrivatedealService privatedealService;
	
	@RequestMapping("/index.do")
	public String home(Model model) {
		
		List<Privatedeal> meronaList = privatedealService.getMeronaList();
		
		model.addAttribute("meronalist", meronaList);
		
		return "/privatedeal/merona/index";
	}
	
	@RequestMapping("/detail.do")
	public String detail() {
		return "/privatedeal/merona/detail";
	}
	
}