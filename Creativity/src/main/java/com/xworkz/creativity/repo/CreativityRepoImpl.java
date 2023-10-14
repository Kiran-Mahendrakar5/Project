package com.xworkz.creativity.repo;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.xworkz.creativity.dto.CreativityDto;
@Repository
public class CreativityRepoImpl implements CreativityRepo{

	@Autowired
	private EntityManagerFactory emf;
	
	@Override
	public boolean save(CreativityDto dto) {
		EntityManager em = 	emf.createEntityManager();
		em.getTransaction().begin();
		em.persist(dto);
		em.getTransaction().commit();
		return true;
		
	}

}
