package com.awsec2.service;

import java.util.List;
import com.awsec2.domain.User;

public interface IUserService {
	
	public void addUser(User user);

	public List<User> queryUser(User user);
	
	public List<User> listAllUser();
	
	public void delOneUser(long uid);
	
	public void updateOneUser(User user);
}
