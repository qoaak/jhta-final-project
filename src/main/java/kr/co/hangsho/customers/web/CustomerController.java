package kr.co.hangsho.customers.web;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.ZoneId;
import java.time.ZonedDateTime;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Pattern;

import javax.servlet.http.HttpServletRequest;
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
import kr.co.hangsho.customers.vo.SearchForm;
import kr.co.hangsho.orders.service.OrderDetailService;
import kr.co.hangsho.orders.service.OrderService;
import kr.co.hangsho.orders.vo.Order;
import kr.co.hangsho.orders.vo.OrderDetail;
import kr.co.hangsho.products.service.ProductDetailService;
import kr.co.hangsho.products.service.ProductQueService;
import kr.co.hangsho.products.service.ProductService;
import kr.co.hangsho.web.criteria.Criteria;

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
	@Autowired
	ProductQueService productQueService;

	public Date getMinusMonthFromNow(long months) {
		return Date.from(LocalDateTime.now().minusMonths(months).atZone(ZoneId.systemDefault()).toInstant());
	}
	
	public Map getMap(SearchForm searchForm, Customer customer) {
		Criteria criteria = new Criteria();
		Map<String, Object> map = new HashMap<String, Object>();
		if(searchForm.getSearch() == 0) {
			System.out.println(criteria);
		} else if(searchForm.getSearch() > 1){
			criteria.setBeginday(getMinusMonthFromNow(searchForm.getSearch()));
		} else if(searchForm.getSearch() == -1) {
			BeanUtils.copyProperties(searchForm, criteria);
		} else {
		}		
		map.put("customer", customer);
		map.put("criteria", criteria);
		return map;
	}
	
	@RequestMapping("/index.do")
	public String mypage(Model model, HttpSession session, SearchForm searchForm) {
		Map<String, Object> loginInfo = (Map) session.getAttribute("LOGIN_INFO");
		Customer customer = new Customer();
		if("CUSTOMER".equals(loginInfo.get("USER_TYPE")))
			customer = (Customer) loginInfo.get("LOGIN_USER");
		else 
			return "redirect:/company/index.do";
		long bm = System.currentTimeMillis();
		Map<String, Object> searchParam = getMap(searchForm, customer);
		List<Order> orders = orderService.getOrdersByCustomer(searchParam);
		
		for (Order order : orders) {
			for (OrderDetail orderDetail : orderDetailService.getOrderDetailsByCustomer(searchParam)) {
				if(order.getId() == orderDetail.getOrderId())
					order.addOrderDetail(orderDetail);
			}
		}
		
		System.out.println(searchForm);
		System.out.println(orders);
		model.addAttribute("orders", orders);
		model.addAttribute("now", LocalDate.now());
		
		long am = System.currentTimeMillis();
		System.out.println((am-bm) + "ms");
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
	public String qnalist(Model model, HttpSession session) {
		
		Map<String, Object> loginInfo = (Map) session.getAttribute("LOGIN_INFO");
		Customer customer = (Customer) loginInfo.get("LOGIN_USER");
		model.addAttribute("questionList", productQueService.getProductQuesByCustomer(customer));
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
	public String loginCheck(String username, String password, HttpSession session, HttpServletRequest request) {
		String denyUrl = "redirect:/customers/login.do?error=deny";
		String returnUrl = request.getParameter("returnUrl");
		returnUrl = (returnUrl == null || "".equals(returnUrl )) ? "/index.do" : returnUrl;
		denyUrl += returnUrl;
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
					return denyUrl;
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
					return returnUrl;
				}
			} catch (Exception e) {
			}
		}
		System.out.println(returnUrl);
		return "redirect:" + returnUrl;
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
	public String infoEdit(InfoForm infoForm, HttpSession session) {
		// infoForm에는 name, password, passwordCheck, phoneNumber만이 담겨있다.
		// 아이디 정보는 session에서 가져오면 되며, infoForm에 아이디를 담지 않음으로써
		// 사용자가 인위적으로 아이디를 form에 입력하여 전송해도 서버에서 처리하지 않기때문에
		// 악의적인 사용자에 의해 데이터베이스의 구성이 바뀔 일이 없다.
		Map loginInfo = (Map) session.getAttribute("LOGIN_INFO");
		Customer loginUser = (Customer) loginInfo.get("LOGIN_USER");
		Customer customer = new Customer();
		customer.setId(loginUser.getId());
		BeanUtils.copyProperties(infoForm, customer);
		String additionalQuery = "";
		if(infoForm.getPassword() != null && infoForm.getPasswordCheck() != null) {
			if(infoForm.getPassword().equals(infoForm.getPasswordCheck())) {
				customerService.updateCustomerInfo(customer);
				additionalQuery = "?infoUpdate=T";
				customer = customerService.getCustomerByNo(customer.getId());
				loginInfo.replace("LOGIN_USER", customer);
				session.setAttribute("LOGIN_INFO", loginInfo);
			} else {
				additionalQuery = "?infoUpdate=F";
			}
		} else if(infoForm.getPassword() == null && infoForm.getPasswordCheck() == null) {
			customerService.updateCustomerInfo(customer);
			additionalQuery = "?infoUpdate=T";
			customer = customerService.getCustomerByNo(customer.getId());
			loginInfo.replace("LOGIN_USER", customer);
			session.setAttribute("LOGIN_INFO", loginInfo);
		}
		return "redirect:/customers/info.do"+additionalQuery;
	}

}
