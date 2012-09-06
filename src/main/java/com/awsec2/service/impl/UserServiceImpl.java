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
		// TODO Auto-generated method stub
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

}
