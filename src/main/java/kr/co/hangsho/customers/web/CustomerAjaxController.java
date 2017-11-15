package kr.co.hangsho.customers.web;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.co.hangsho.customers.mappers.CustomerMapper;
import kr.co.hangsho.customers.vo.Customer;
import kr.co.hangsho.customers.vo.PwdCheckResult;

@Controller
@RequestMapping("/customers")
public class CustomerAjaxController {

	@Autowired
	CustomerMapper customerMapper;
	
	@RequestMapping("/pwdcheck.do")
	public @ResponseBody String pwdCheck(String pwd, HttpSession session) {
		String checked = "false";
		if("asdf".equals(pwd))
//			checked.setChecked(true);
			checked = "true";
		/*
		 * Customer customer = (Customer) session.getAttribute("LOGIN_USER");
		 * if(pwd.equals())		// pwd  --> sha256으로
		 * {
		 *  PwdCheckResult pcr = new  PwdCheckResult();
		 *  pcr.checked = true;
		 * }
		*/
			
			return checked;
	}
	
	@RequestMapping("/nicknamecheck.do")
	public @ResponseBody String nicknameCheck(String nickname) {
		String result = "usable";
		for(Customer c : customerMapper.getCustomers()) {
			if(nickname.equals(c.getNickname())) {
				result = "exist";
				break;
			}
		}
		return result;
	}
}
