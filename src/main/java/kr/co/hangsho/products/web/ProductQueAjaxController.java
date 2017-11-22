package kr.co.hangsho.products.web;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.co.hangsho.products.service.ProductQueService;
import kr.co.hangsho.products.vo.ProductQue;
import kr.co.hangsho.web.criteria.Criteria;

@Controller
public class ProductQueAjaxController {

	@Autowired
	private ProductQueService productQueService;
	
	// 상품문의 제목 하나 당 나오는 내용
	@RequestMapping("/hangshoproducts/getQueContent.do")
	@ResponseBody
	public ProductQue getProductQueContent(int id) {
		ProductQue productQue = productQueService.getProductQueContent(id);
		return productQue;
	}
	
	// 상품문의 리스트 Ajax 처리
	@RequestMapping("/hangshoproducts/getProquelist.do")
	@ResponseBody
	public Map<String, Object> list(Criteria criteria, Model model) {
		//System.out.println(criteria);
		
		int totalRows = productQueService.getTotalRows(criteria);
		criteria.setTotalRows(totalRows);
		
		Map<String, Object> map = new HashMap<String, Object>();
		
		map.put("pagination", criteria);
		map.put("productque", productQueService.getProductQuess(criteria));
		
		return map;
	}
	
	
}
