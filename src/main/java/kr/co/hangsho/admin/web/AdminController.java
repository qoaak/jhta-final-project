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
	
	@RequestMapping("/prolist.do")
	public String productList(Criteria criteria, Model model) {
	
			model.addAttribute("products", adminService.getProducts(criteria));
		
		return "admin/prolist";
	}
	
	@RequestMapping("/allearning.do")
	public String allearning(Criteria criteria, Model model) {
			model.addAttribute("products", adminService.getProducts(criteria));
		return "admin/allearning";
	}
	
	@RequestMapping("/memberlist.do")
	public String memberlist() {
		
		return "admin/memberlist";
	}
}
