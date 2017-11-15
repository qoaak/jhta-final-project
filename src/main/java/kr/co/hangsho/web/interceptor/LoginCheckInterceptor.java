package kr.co.hangsho.web.interceptor;

import java.util.Set;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class LoginCheckInterceptor extends HandlerInterceptorAdapter{

	private Set<String> urlSets;
	public void setUrlSets(Set<String> urlSets) {
		this.urlSets = urlSets;
	}
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		
		String requestURI = request.getRequestURI();
		if(urlSets.contains(requestURI))
			return true;
		
/*		HttpSession session = request.getSession(false);
		if(session == null) {
			response.sendRedirect("/users/login.do?error=deny");
			return false;
		}*/
		return true;
		
/*		User user = (User) session.getAttribute("LOGIN_USER");
		if(user == null) {
			response.sendRedirect("/user/login.do?error=deny");
			return false;
		} else {
			return true;
		}*/
		
	}
	
}
