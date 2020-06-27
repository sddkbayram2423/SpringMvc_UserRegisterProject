package com.bayram.dao.Imp;

import java.util.List;



import javax.persistence.EntityManager;


import javax.persistence.EntityTransaction;
import javax.persistence.TypedQuery;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.bayram.dao.UserDao;
import com.bayram.model.Login;
import com.bayram.model.User;
@Repository
public class UserDaoImp implements UserDao {

	
	@Autowired
	private EntityManager entityManager;
	
	@Autowired
	private EntityTransaction entityTransaction;
	
	@Override
	public void registerUser(User user) {
			try {
				entityTransaction.begin();
				entityManager.persist(user);
				entityManager.flush();
				entityTransaction.commit();
			} catch (Exception e) {
				System.out.println("Hata: "+e);
				try {
					entityTransaction.rollback();
				} catch (Exception e2) {
					System.out.println("Hata: "+e2);
				}
			}
		
			
	}

	@Override
	public User validateUser(Login login) {
		
		User user=new User();
		
		TypedQuery<User> query=entityManager.createQuery("from User WHERE username=:username", User.class);
		query.setParameter("username", login.getUsername());
		user=query.getSingleResult();
		
		if(user.getPassword().trim().matches(login.getPassword().trim())) {
			return user;
		}
		return null;
	}
	@Override
	public List<User> findByALL() {
		TypedQuery<User> query=entityManager.createNamedQuery( "User.findByAll", User.class);
		
		
		return query.getResultList();
	}
	@Override
	public User findById(long id) {
		TypedQuery<User> query=entityManager.createNamedQuery( "User.findById", User.class);
		query.setParameter("id",id);
		return query.getSingleResult();
	}

	

}
