package kr.co.hangsho.products.web;

import java.io.IOException;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.hangsho.customers.vo.Customer;
import kr.co.hangsho.products.service.ProductQueService;
import kr.co.hangsho.products.vo.ProductQue;
import kr.co.hangsho.products.web.form.ProductQueForm;
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
	
	@RequestMapping("/form.do")
	public String form() {
		return "productque/form";
	}
	
	@RequestMapping("/add.do")
	public String add(ProductQueForm productQueForm, HttpSession session) throws IOException{
				
		Map<String, Object>loginInfo = (Map) session.getAttribute("LOGIN_INFO");
		Customer customer = (Customer) loginInfo.get("LOGIN_USER"); 
		if (customer == null) {
			return "redirect:/customers/login.do?error=deny";
		}
		System.out.println(customer);
		ProductQue productQue = new ProductQue();
		productQue.setTitle(productQueForm.getTitle());
		productQue.setQuestion(productQueForm.getQuestion());
		
		System.out.println(productQue);
		productQueService.addProductQue(productQue);
		
		productQue.setCustomer(customer);
		BeanUtils.copyProperties(productQueForm, productQue);
		return "redirect:/productque/detail.do";
	}
	
}
