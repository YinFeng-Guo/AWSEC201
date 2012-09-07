package com.awsec2.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.awsec2.domain.User;
import com.awsec2.persistence.UserMapper;
import com.awsec2.service.IUserService;


@Service
public class UserServiceImpl implements IUserService{

	@Autowired
	private UserMapper userMapper;

	@Override
	public void addUser(User user) {
		userMapper.addUser(user);
	}

	@Override
	public List<User> queryUser(User user) {
		return userMapper.queryUser(user);
		
	}

	@Override
	public List<User> listAllUser() {
		System.out.println("In Service ListAllUser");
		return userMapper.listAllUser();
	}

	@Override
	public void delOneUser(long uid) {
		userMapper.delOneUserById(uid);
	}

	@Override
	public void updateOneUser(User user) {
		userMapper.updateOneUser(user);
	}

	@Override
	public List<User> searchByUsername(User user) {
		return userMapper.searchByUsername(user);
	}

	@Override
	public void addUsers(List<User> users) {
		for(User user: users){
			System.out.println("Add user Firstnaem :" + user.getFirstname());
			System.out.println("Add user Lastnaem :" + user.getLastname());
			System.out.println("Add user super :" + user.isSupers());
			System.out.println("Add user active :" + user.isActive());
			System.out.println("Add user username :" + user.getUsername());
			System.out.println("Add user Password :" + user.getPassword());
			System.out.println("Add user Org :" + user.getOrganization_id());
		}
		userMapper.addUsers(users);
	}

	@Override
	public User getUserByUsername(String username) {
		System.out.println("In Service username :" + username );
		return userMapper.getUserByUsername(username);
	}

}
