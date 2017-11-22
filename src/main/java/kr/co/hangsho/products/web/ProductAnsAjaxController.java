package kr.co.hangsho.products.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.co.hangsho.products.service.ProductAnsService;
import kr.co.hangsho.products.vo.ProductAns;

@Controller
public class ProductAnsAjaxController {

	private ProductAnsService productAnsService;
	
	// 상품문의 질문 하나에 나오는 판매자 답변 내용
	@RequestMapping("/hangshoproducts/getAnsContent.do")
	@ResponseBody
	public ProductAns getProductAnsContent(int id) {
		ProductAns productAns = productAnsService.getProductAnsByProQueId(id);
		return productAns;
	}
	
}	
