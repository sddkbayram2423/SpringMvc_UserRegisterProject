package com.bayram.jpaFactory;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;

import org.springframework.context.annotation.Bean;
import org.springframework.stereotype.Component;
@Component
public class JpaFactory {
	
	private EntityManagerFactory emf=null;
	private EntityManager entityManager=null;

	@Bean
	public EntityManager getEntityManager() {
		this.emf=Persistence.createEntityManagerFactory("JpaPersistenceUnit");
		this.entityManager=this.emf.createEntityManager();
		return this.entityManager;
	}
	@Bean
	public EntityTransaction getEntityTransaction () {
		return this.entityManager.getTransaction();
	}

}
