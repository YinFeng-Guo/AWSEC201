package com.awsec2.web.action.shared;

import org.springframework.beans.factory.annotation.Autowired;

import com.awsec2.domain.User;
import com.awsec2.service.IUserService;



public class LoginAction {

	
	@Autowired
	private IUserService userService = null;
	
	private User user = null;
	private String message;
	
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
	
	private User loadUser(){		
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
	}
	
	public String login() throws Exception{		
		
		this.loadUser();
		if(message == null || message.isEmpty()){
			return "success";//return null;						
		}else{
			return "failure";
		}
			
	}	
	
	public String home(){
		return "success";
	}
}
