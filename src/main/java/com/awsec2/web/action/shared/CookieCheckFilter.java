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

import org.springframework.beans.factory.annotation.Autowired;

import com.awsec2.domain.User;
import com.awsec2.service.IUserService;
import com.awsec2.service.impl.UserServiceImpl;
import com.awsec2.util.CookieUtil;

public class CookieCheckFilter implements Filter {

	@Autowired
	private IUserService userService = null;
	
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
		CookieUtil cookieUtil = new CookieUtil();
		String cookieVale = cookieUtil.getCookieValue(hReq, "username");
		System.out.println("In filter Cookie Value : " + cookieVale);
		HttpSession session = hReq.getSession();
		if(session != null){
			if(session.getAttribute("username") == null){
				session.setAttribute("username", cookieVale);
			}
			System.out.println("Session is not null : " + session.getAttribute("username"));
		}else{
			if(session.getAttribute("username") == null){
				session.setAttribute("username", cookieVale);
			}
			System.out.println("Session is null : " + session.getAttribute("username"));
		}
		/*if(userService == null){
			userService = new UserServiceImpl();
		}*/
		//User user = null;
		//user = (User)userService.getUserByUsername(cookieVale);
		String url = hReq.getRequestURI();
		System.out.println("Url:" + url);
		if(cookieVale == null){
			if(url != null && !url.equals("")
					&& (url.indexOf("Login") < 0 && url.indexOf("login") < 0)
					&& (url.indexOf("index") < 0 && url.indexOf("Index") < 0)){
				hRes.sendRedirect(hReq.getContextPath() + "/index.action");
				return;
			}
		}else{
			//cookie is exist
			
			if (url != null && !url.equals("") && url.indexOf("login") >= 0) {
				hRes.sendRedirect("home.action");
				return;
			}else if(url == null || url.equals("") || url.equals("/AWSEC201/") || url.equals("/") || url.endsWith("/")){
				hRes.sendRedirect("home.action");
				return;
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
