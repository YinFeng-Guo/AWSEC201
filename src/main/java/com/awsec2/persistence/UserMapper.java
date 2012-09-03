package com.awsec2.persistence;

import java.util.List;
import com.awsec2.domain.User;

public interface UserMapper {

	User loadUserByEmailId(String emailId);

	List<User> queryUser(User user);

}
