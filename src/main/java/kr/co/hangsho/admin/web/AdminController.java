package kr.co.hangsho.admin.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.hangsho.admin.service.AdminService;
import kr.co.hangsho.web.criteria.Criteria;

@Controller
@RequestMapping("/admin")
public class AdminController {

	@Autowired
	AdminService adminService;
	
	@RequestMapping("/index.do")
	public String index() {
		
		return "admin/index";
		
	}
	
	// 상품관리
	
	@RequestMapping("/prolist.do")
	public String productList(Criteria criteria, Model model) {
	
			model.addAttribute("products", adminService.getProducts(criteria));
		
		return "admin/prolist";
	}
	
	@RequestMapping("/recompro.do")
	public String recompro(Criteria criteria, Model model) {
			model.addAttribute("products", adminService.getProductList(criteria));
		return "admin/recompro";
	}
	
	// 실적관리
	
	@RequestMapping("/earning.do")
	public String earning() {
		return "admin/earning";
	}
	
	@RequestMapping("/earningpro.do")
	public String allearning(Criteria criteria, Model model) {
			model.addAttribute("items", adminService.getItems(criteria));
		return "admin/earningpro";
	}
	
	// 회원관리
	
	@RequestMapping("/membercom.do")
	public String memberCompany() {
		
		return "admin/membercom";
	}
	
	@RequestMapping("/membercus.do")
	public String memberCustomer() {
		
		return "admin/membercus";
	}
	
	// 문의관리
	
	@RequestMapping("/qnalist.do")
	public String qnalist() {
		return "admin/qnalist";
	}
}
