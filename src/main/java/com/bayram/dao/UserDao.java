package com.bayram.dao;

import java.util.List;

import com.bayram.model.Login;
import com.bayram.model.User;

public interface UserDao {
	
	void registerUser(User user);
	User validateUser(Login login);
	public List<User> findByALL();
	public User findById(long id);
	
}
