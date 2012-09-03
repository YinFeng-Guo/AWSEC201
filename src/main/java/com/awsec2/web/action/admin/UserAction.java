package com.awsec2.web.action.admin;

import java.util.List;
import com.awsec2.domain.User;
import com.awsec2.service.IUserService;
import com.awsec2.web.action.BaseAction;
import com.opensymphony.xwork2.Preparable;
import org.springframework.beans.factory.annotation.Autowired;

public class UserAction extends BaseAction implements Preparable{

	private static final long serialVersionUID = 3923142709323631907L;

	@Autowired
	private IUserService userService = null;
	private User user = null;
	
	private List<User> users = null;
	
	@Override
	public void prepare() throws Exception {
		// TODO Auto-generated method stub
		
	}
	public String unspecial() throws Exception{
		return SUCCESS;
	}	
	public String query() throws Exception {
		users = userService.queryUser(user);
		return "success";
	}
	
	/**
	 * @return the user
	 */
	public User getUser() {
		return user;
	}

	/**
	 * @param user the user to set
	 */
	public void setUser(User user) {
		this.user = user;
	}

	/**
	 * @return the users
	 */
	public List<User> getUsers() {
		return users;
	}

	/**
	 * @param users the users to set
	 */
	public void setUsers(List<User> users) {
		this.users = users;
	}


}
