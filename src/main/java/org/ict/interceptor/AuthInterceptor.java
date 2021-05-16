package org.ict.interceptor;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

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

}
