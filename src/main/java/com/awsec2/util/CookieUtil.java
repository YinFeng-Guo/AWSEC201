package com.awsec2.util;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class CookieUtil {
	Cookie newCookie = null;
	
	public void addCookies(HttpServletResponse res, String cookieName, String cookieValue, int maxAge) {
		newCookie = new Cookie(cookieName, cookieValue);
		newCookie.setMaxAge(maxAge);
		res.addCookie(newCookie);
	}
	
	public String getCookieValue(HttpServletRequest req, String cookieName) {
		String cookieValue = null;
		Cookie[] cookies = req.getCookies();
		if (cookies != null) {
			for (int i = 0; i < cookies.length; i++) {
				Cookie c = cookies[i];
				if (c.getName().equalsIgnoreCase(cookieName)) {
					cookieValue = c.getValue();
				}
			}
		}
		return cookieValue;
	}
	
	public void delCookies(HttpServletResponse res, String cookieName){
		newCookie = new Cookie(cookieName, null);
		newCookie.setMaxAge(0);
		res.addCookie(newCookie);
	}
}
