package com.awsec2.service;

import java.util.List;
import com.awsec2.domain.User;

public interface IUserService {

	User loadUserByEmailId(String emailId);
	
	public void addUser(User user);

	public List<User> queryUser(User user);
	
	public List<User> listAllUser();
}
