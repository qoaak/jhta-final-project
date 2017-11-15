package kr.co.hangsho.products.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.hangsho.products.service.ProductQueService;
import kr.co.hangsho.web.criteria.Criteria;

@Controller
@RequestMapping("/productque")
public class ProductQueController {

	@Autowired
	private ProductQueService productQueService;
	
	
	@RequestMapping("/detail.do")
	public String list(Model model) {
		model.addAttribute("productque", productQueService.getAllProductQues());
		return "detail";
	}
	
	
}
