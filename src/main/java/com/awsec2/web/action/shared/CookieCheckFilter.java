package com.awsec2.web.action.shared;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.awsec2.domain.User;
import com.awsec2.persistence.UserMapper;
import com.awsec2.util.CookieUtil;

public class CookieCheckFilter implements Filter {
	
	private static CookieUtil cookieUtil = null;
	
	static{
		cookieUtil = new CookieUtil();
	}
	@Override
	public void destroy() {
		// TODO Auto-generated method stub

	}
	@Override
	public void doFilter(ServletRequest req, ServletResponse res,
			FilterChain chain) throws IOException, ServletException {	
		System.out.println("In Filter");
		HttpServletRequest hReq = (HttpServletRequest) req;
		HttpServletResponse hRes = (HttpServletResponse) res;
		HttpSession session = null;
		//modify the business logic
		/*
		 * url --> cookie is exist --=true--> 
		 * 	   
		 */
		String url = hReq.getRequestURI();
		System.out.println("Url:" + url);
		if(!(url.contains("/js") || url.contains("/images") || url.contains("/css") || url.contains("/jQuery"))){
		String cookieVale = cookieUtil.getCookieValue(hReq, "username");
		String isSuper = null;
		System.out.println("In filter Cookie Value : " + cookieVale);
		if(cookieVale == null){
			if(url != null && !url.equals("")
					&& (url.indexOf("Login") < 0 && url.indexOf("login") < 0)
					&& (url.indexOf("index") < 0 && url.indexOf("Index") < 0)){
				hRes.sendRedirect(hReq.getContextPath() + "/index.action");
				return;
			}
		}else{
			isSuper = cookieUtil.getCookieValue(hReq, "isSuper"); 
			System.out.println("In filter cookie isSuper : " + isSuper);
			session = hReq.getSession() != null ? hReq.getSession() : null;
			if(session != null){
				if(session.getAttribute("username") == null){
					session.setAttribute("username", cookieVale);
					session.setAttribute("isSuper", isSuper);
				}
				System.out.println("Session is not null : " + session.getAttribute("username") + ", Super : " + isSuper);
			}
			if (url != null && !url.equals("") && url.indexOf("login") >= 0) {
				hRes.sendRedirect("home.action");
				return;
			}else if(url == null || url.equals("") || url.equals("/AWSEC201/") || url.equals("/") || url.endsWith("/")){
				hRes.sendRedirect("home.action");
				return;
			}
		}
		}
		chain.doFilter(req, res);
		return;
	}

	@Override
	public void init(FilterConfig arg0) throws ServletException {
		// TODO Auto-generated method stub

	}

}
