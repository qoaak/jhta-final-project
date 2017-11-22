package kr.co.hangsho.products.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import kr.co.hangsho.products.service.ProductAnsService;


@Controller
@RequestMapping("/hangshoproducts")
public class ProductAnsController {

	@Autowired
	private ProductAnsService productAnsService;
	
	
	
}
