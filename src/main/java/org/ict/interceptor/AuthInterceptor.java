package org.ict.interceptor;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.ict.domain.UserVO;
import org.ict.service.Userservice;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;
import org.springframework.web.util.WebUtils;

public class AuthInterceptor extends HandlerInterceptorAdapter {
	private void saveDest(HttpServletRequest req) {

		String uri = req.getRequestURI();

		String query = req.getQueryString();

		if (query == null || query.equals("null")) {
			query = "";

		} else {
			query = "?" + query;
		}
		if (req.getMethod().equals("GET")) {
			req.getSession().setAttribute("dest", uri + query);

		}
	}

	@Autowired
	private Userservice service;
	
	@Override
	public boolean preHandle(HttpServletRequest request,
			HttpServletResponse response,
			Object handler) throws Exception{
HttpSession session = request.getSession();
		
		if(session.getAttribute("login") == null) {
			
			
			// 로그인 페이지 이동 전 이전 페이지 주소를 세션에 저장
			saveDest(request);
			
			Cookie loginCookie = WebUtils.getCookie(request, "loginCookie");
			
			if(loginCookie != null) {
				UserVO userVO = service.checkLoginBefore(loginCookie.getValue());
				
				if(userVO != null) {
					session.setAttribute("login", userVO);
					return true;
				}
			}
			
			response.sendRedirect("/login/login");
			// false 리턴시 이 로직이 끝난 후 postHandle을 실행하지 않음
			return false;
		}
		//  true 리턴시 이 로직이 끝난 후 postHandle을 실행함
		return true;
	}
	
}
