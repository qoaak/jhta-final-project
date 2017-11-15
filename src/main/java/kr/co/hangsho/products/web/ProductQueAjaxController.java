package kr.co.hangsho.products.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.co.hangsho.products.service.ProductQueService;
import kr.co.hangsho.products.vo.ProductQue;
import kr.co.hangsho.products.web.form.ProductQueForm;

@Controller
public class ProductQueAjaxController {

	@Autowired
	ProductQueService productQueService;
	
	@RequestMapping("/productque/addd.do")
	@ResponseBody
	public ProductQue addQue(ProductQueForm productQueForm) {
		ProductQue productQue = new ProductQue();
		productQue.setTitle(productQueForm.getTitle());
		productQue.setQuestion(productQueForm.getQuestion());
		
		productQueService.addProductQue(productQue);
		
		return productQue;
	}
}
