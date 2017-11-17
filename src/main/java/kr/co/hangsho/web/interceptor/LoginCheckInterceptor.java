package kr.co.hangsho.web.interceptor;

import java.util.Map;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import kr.co.hangsho.company.vo.Company;

public class LoginCheckInterceptor extends HandlerInterceptorAdapter{

	private Set<String> urlSets;
	public void setUrlSets(Set<String> urlSets) {
		this.urlSets = urlSets;
	}
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		String params = request.getQueryString();
		params = params  == null ? "" : "?"+params;
		String requestURI = request.getRequestURI();
		System.out.println(requestURI);
		String loginUrl = "/customers/login.do?error=deny&returnUrl="+requestURI+params;
		System.out.println(urlSets.contains(requestURI));

		
		if(urlSets.contains(requestURI))
			return true;
		
		HttpSession session = request.getSession();
		Map<String, Object> loginInfo = (Map) session.getAttribute("LOGIN_INFO");
		if(loginInfo == null) {
			response.sendRedirect(loginUrl);
			return false;
		} else {
			return true;
		}
		

		
/*		User user = (User) session.getAttribute("LOGIN_USER");
		if(user == null) {
			response.sendRedirect("/user/login.do?error=deny");
			return false;
		} else {
			return true;
		}*/
		
	}
	
}
