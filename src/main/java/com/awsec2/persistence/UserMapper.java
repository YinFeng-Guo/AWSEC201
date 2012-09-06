package com.awsec2.persistence;

import java.util.List;
import com.awsec2.domain.User;

public interface UserMapper {

	List<User> queryUser(User user);

	List<User> listAllUser();
	
	void addUser(User user);
	
	void delOneUserById(long uid);
	
	void updateOneUser(User user);
}
