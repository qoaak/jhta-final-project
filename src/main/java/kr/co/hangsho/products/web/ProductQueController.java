package kr.co.hangsho.products.web;

import java.io.IOException;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.co.hangsho.customers.vo.Customer;
import kr.co.hangsho.products.mappers.ProductQueMapper;
import kr.co.hangsho.products.service.ProductQueService;
import kr.co.hangsho.products.vo.Product;
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
	public String addQue(String productId, ProductQueForm productQueForm) throws IOException{
				
		/*Map<String, Object>loginInfo = (Map) session.getAttribute("LOGIN_INFO");
		Customer customer = (Customer) loginInfo.get("LOGIN_USER"); 
		if (customer == null) {
			return "redirect:/customers/login.do?error=deny";
		}*/
		//System.out.println(customer);
		
		ProductQue productQue = new ProductQue();
		Product product = new Product();
		product.setId(Integer.parseInt(productId));
		//product.setId(productQueForm.getProductId());
		BeanUtils.copyProperties(productQueForm, productQue);
		productQue.setProduct(product);
		Customer customer = new Customer();
		customer.setId(4);
		productQue.setCustomer(customer);
		
		
		//System.out.println(productQue);
		productQueService.addProductQue(productQue);
		
		//productQue.setCustomer(customer);
		return "redirect:/productque/detail.do";
	}
	
}
