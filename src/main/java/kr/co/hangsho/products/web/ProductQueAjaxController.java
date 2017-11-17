package kr.co.hangsho.products.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.co.hangsho.products.service.ProductQueService;
import kr.co.hangsho.products.vo.ProductQue;

@Controller
public class ProductQueAjaxController {

	@Autowired
	private ProductQueService productQueService;
	
	// 상품문의 제목 하나 당 나오는 내용
	@RequestMapping("/productque/getQueContent.do")
	@ResponseBody
	public ProductQue getProductQueContent(int id) {
		ProductQue productQue = productQueService.getProductQueContent(id);
		return productQue;
	}
}
