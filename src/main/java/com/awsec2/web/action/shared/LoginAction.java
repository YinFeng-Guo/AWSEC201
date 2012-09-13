package com.awsec2.web.action.shared;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;
import org.springframework.beans.factory.annotation.Autowired;

import com.awsec2.domain.User;
import com.awsec2.service.IUserService;
import com.awsec2.util.CookieUtil;
import com.awsec2.web.action.BaseAction;



public class LoginAction extends BaseAction{

	private static final long serialVersionUID = -1182291046531750706L;

	@Autowired
	private IUserService userService = null;
	
	private User user = null;
	//private String message;
	
	private HttpSession session = null;
	private HttpServletResponse res = null;
	private HttpServletRequest req = null;
	
	/**
	 * @return the user
	 */
	public User getUser() {
		return user;
	}

	/**
	 * @param user   the user to set
	 */
	public void setUser(User user) {
		this.user = user;
	}
	
	/*private User loadUser(){		
		System.out.println("@@@@@######user.getEmail_id():"+user.getEmail_id());
		User currUser = (User)userService.loadUserByEmailId(user.getEmail_id());	
		System.out.println("@@@@@######currUser:"+currUser);
		if (currUser == null) {
			message = "error.username.notexiste";
        }
		if ((currUser != null) && !currUser.getPassword().equals(user.getPassword())) {
			message = "error.password.mismatch";
        }
		return currUser;
	}*/
	
	private boolean loginValid(){
		if(user != null){
			System.out.println("****@user.username*******:" + user.getUsername());
			User currUser = (User)userService.getUserByUsername(user.getUsername());
			if(currUser == null){
				System.out.println("****@login message*******: username is not exist" );
				return false;
			}
			if(currUser != null && !currUser.getPassword().equals(user.getPassword())){
				System.out.println("****@login message*******: password is error");
				return false;
			}
			System.out.println("In action isSuper : " + currUser.isSupers());
			if(req == null){
				req = ServletActionContext.getRequest();
				session = req.getSession();
				session.setAttribute("username", currUser.getUsername());
				session.setAttribute("userId", currUser.getId());
				session.setAttribute("isSuper", currUser.isSupers());
			}
			if(res == null){
				res = ServletActionContext.getResponse();
				new CookieUtil().addCookies(res, "username", currUser.getUsername(), 3600);
				new CookieUtil().addCookies(res, "isSuper", currUser.isSupers() == true ? "true" : "false" , 3600);
			}else{
				new CookieUtil().addCookies(res, "username", currUser.getUsername(), 3600);
				new CookieUtil().addCookies(res, "isSuper", currUser.isSupers() == true ? "true" : "false" , 3600);
			}
			return true;
		}
		return false;
	}
	
	public String login() throws Exception{		
		
		/*this.loadUser();
		if(message == null || message.isEmpty()){
			return "success";//return null;						
		}else{
			return "failure";
		}*/
		if(loginValid()){
			System.out.println("****@login message*******: login successful");
			if(req == null){
				req = ServletActionContext.getRequest();
				session = req.getSession();
				System.out.println("Session Username : " + session.getAttribute("username"));
				System.out.println("Session UserId : " + session.getAttribute("userId"));
				System.out.println("Session IsSuper : " + session.getAttribute("isSuper"));
			}else{
				session = req.getSession();
				System.out.println("Session Username : " + session.getAttribute("username"));
				System.out.println("Session UserId : " + session.getAttribute("userId"));
				System.out.println("Session IsSuper : " + session.getAttribute("isSuper"));
			}
			return "success";
		}else{
			return "failure";
		}
		//return "success";	
	}	
	
	public String logout(){
		if(res == null){
			res = ServletActionContext.getResponse();
		}
		new CookieUtil().delCookies(res, "username");
		new CookieUtil().delCookies(res, "isSuper");
		return "success";
	}
	
	public String home(){
		return "success";
	}
	
	public String index(){
		return "success";
	}
	
	public String testing() throws Exception{	
		return "success";
	}
}
