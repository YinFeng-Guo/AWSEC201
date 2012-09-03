package com.awsec2.service;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.transaction.TransactionConfiguration;

import com.awsec2.BaseJunitTest;
import com.awsec2.domain.User;
import com.awsec2.service.IUserService;

@TransactionConfiguration(defaultRollback=false)
public class TestUserService extends BaseJunitTest{
	@Autowired
	private IUserService userService;
	
	@Test
	public void testQueryAllUsers() {
		User user = null;
		userService.queryUser(user);
	}
}
