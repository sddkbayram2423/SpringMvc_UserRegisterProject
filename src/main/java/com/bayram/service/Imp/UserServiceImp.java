package com.bayram.service.Imp;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.factory.PasswordEncoderFactories;
import org.springframework.security.crypto.password.DelegatingPasswordEncoder;
import org.springframework.stereotype.Service;

import com.bayram.dao.Imp.UserDaoImp;
import com.bayram.model.Login;
import com.bayram.model.User;
import com.bayram.service.UserService;

@Service
public class UserServiceImp implements UserService {
	
//	private UserDaoImp dao=new UserDaoImp();
	
	@Autowired
	private UserDaoImp dao;
	
	@Override
	public void registerUser(User user) {
		dao.registerUser(encodePasword(user));
		
	}

	@Override
	public User validateUser(Login login) {
		return dao.validateUser(login);
	}

	@Override
	public List<User> findByALL() {
		return dao.findByALL();
	}

	@Override
	public User findById(long id) {
		return dao.findById(id);
	}
	
	private User encodePasword(User user) {
		DelegatingPasswordEncoder encoder=(DelegatingPasswordEncoder) PasswordEncoderFactories.createDelegatingPasswordEncoder();
		User user1=new User();
		user1.setFirstname(user.getFirstname());
		user1.setLastname(user.getLastname());
		user1.setUsername(user.getUsername());
		user1.setPassword(encoder.encode(user.getPassword()));
		return user1;
	}

}
