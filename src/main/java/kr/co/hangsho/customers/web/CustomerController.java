package kr.co.hangsho.customers.web;

import java.util.HashMap;
import java.util.Map;
import java.util.regex.Pattern;

import javax.servlet.http.HttpSession;

import org.apache.commons.codec.digest.DigestUtils;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.hangsho.company.service.CompanyService;
import kr.co.hangsho.company.vo.Company;
import kr.co.hangsho.customers.services.CustomerService;
import kr.co.hangsho.customers.vo.Customer;
import kr.co.hangsho.customers.vo.InfoForm;
import kr.co.hangsho.customers.vo.RegisterForm;
import kr.co.hangsho.orders.service.OrderDetailService;
import kr.co.hangsho.orders.service.OrderService;
import kr.co.hangsho.products.service.ProductDetailService;
import kr.co.hangsho.products.service.ProductService;

@Controller
@RequestMapping("customers")
public class CustomerController {

	@Autowired
	CustomerService customerService; 
	@Autowired
	OrderService orderService;
	@Autowired
	ProductDetailService detailService;
	@Autowired
	ProductService productService;
	@Autowired
	OrderDetailService orderDetailService;
	@Autowired
	CompanyService companyService;
	
	@RequestMapping("/index.do")
	public String mypage(Model model) {
		Customer customer = new Customer();
		customer.setId(4);
		model.addAttribute("orderDetails", orderDetailService.getOrderDetailsByCustomer(customer));
		model.addAttribute("orders", orderService.getOrdersByCustomer(customer));
		return "customers/index";
	}

	@RequestMapping("/refundlist.do")
	public String refundList() {

		return "customers/refundlist";
	}

	@RequestMapping("/membership.do")
	public String membership() {

		return "customers/membership";
	}

	@RequestMapping("/qnalist.do")
	public String qnalist() {

		return "customers/qnalist";
	}

	@RequestMapping("/info.do")
	public String info() {

		return "customers/info";
	}

	
	@RequestMapping("/deal.do")
	public String deal() {
		
		return "customers/deal";
	}	

	@RequestMapping("/login.do")
	public String login() {

		return "customers/login";
	}
	@RequestMapping("/logout.do")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/index.do";
	}

	@RequestMapping("/logincheck.do")
	public String loginCheck(String username, String password, HttpSession session) {
		boolean isEmail = Pattern.matches(
				"^[0-9a-zA-Z]([-_\\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\\.]?[0-9a-zA-Z])*\\.[a-zA-Z]{2,3}$", username);

		Map<String, Object> loginInfo = new HashMap<String, Object>();
		
		if (isEmail) {
			Customer customer = new Customer();
			try {
				customer = customerService.getCustomerById(username);
				if (DigestUtils.sha256Hex(password).equals(customer.getPassword())) {
					loginInfo.put("LOGIN_USER", customer);
					loginInfo.put("USER_TYPE", "CUSTOMER");
					session.setAttribute("LOGIN_INFO", loginInfo);
					
				} else {
					return "redirect:/customers/login.do?error=deny";
				}
			} catch (Exception e) {

			}
		} else {
			Company company = companyService.getCompanyByUserName(username);
			try {
				if (DigestUtils.sha256Hex(password).equals(company.getPassword())) {
					loginInfo.put("LOGIN_USER", company);
					loginInfo.put("USER_TYPE", "COMPANY");
					session.setAttribute("LOGIN_INFO", loginInfo);
				} else {
					return "redirect:/customers/login.do?error=deny";
				}
			} catch (Exception e) {
			}
		}

		return "redirect:/index.do";
	}

	@RequestMapping("/register.do")
	public String register() {
		return "customers/register";
	}

	@RequestMapping("/addcustomer.do")
	public String addCustomer(RegisterForm registerForm) {

		Customer customer = new Customer();
		BeanUtils.copyProperties(registerForm, customer);
		customerService.addNewCustomer(customer);

		return "redirect:/index.do";
	}

	@RequestMapping("/info-update.do")
	public String infoEdit(InfoForm infoForm) {
		// infoForm에는 name, password, passwordCheck, phoneNumber만이 담겨있다.
		// 아이디 정보는 session에서 가져오면 되며, infoForm에 아이디를 담지 않음으로써
		// 사용자가 인위적으로 아이디를 form에 입력하여 전송해도 서버에서 처리하지 않기때문에
		// 악의적인 사용자에 의해 데이터베이스의 구성이 바뀔 일이 없다.
		System.out.println(infoForm);
		return "redirect:/customers/index.do";
	}

}
