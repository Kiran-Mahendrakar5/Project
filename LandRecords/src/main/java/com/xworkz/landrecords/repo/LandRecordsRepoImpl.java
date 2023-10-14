package com.xworkz.landrecords.repo;

import java.util.List;

import javax.enterprise.inject.Model;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Query;
import javax.persistence.TypedQuery;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.xworkz.landrecords.dto.LandRecordsDto;
import com.xworkz.landrecords.dto.LandRecordsDtoOne;

@Repository
public class LandRecordsRepoImpl implements LandRecordsRepo {

	@Autowired
	private EntityManagerFactory emf;

	@Override
	public boolean save(LandRecordsDto dto) {
		EntityManager em = emf.createEntityManager();
		em.getTransaction().begin();
		em.persist(dto);
		em.getTransaction().commit();
		return true;

	}

	@Override
	public LandRecordsDto findByEmail(String email) {
		EntityManager em = emf.createEntityManager();
		em.getTransaction().begin();
		TypedQuery<LandRecordsDto> quary = em.createNamedQuery("findEmail", LandRecordsDto.class);
		quary.setParameter("em", email);
		LandRecordsDto dto = quary.getSingleResult();
		return dto;
	}

	@Override
	public boolean updateOtpByEmail(String otp, String email) {
		EntityManager em = emf.createEntityManager();
		em.getTransaction().begin();
		Query query = em.createNamedQuery("updateOtp");
		query.setParameter("op", otp);
		query.setParameter("eml", email);
		query.executeUpdate();
		try {
			em.getTransaction().commit();
			System.out.println("otp updated");
			return true;
		} catch (Exception e) {
			em.getTransaction().rollback();
			e.printStackTrace();
			return false;
		} finally {
			em.close();
		}

	}

	@Override
	public LandRecordsDto findOtp(String otp) {
		EntityManager em = emf.createEntityManager();
		em.getTransaction().begin();
		TypedQuery<LandRecordsDto> quary = em.createNamedQuery("findOtp", LandRecordsDto.class);
		quary.setParameter("ot", otp);
		LandRecordsDto dto = quary.getSingleResult();
		return dto;
	}

	@Override
	public boolean saveRecords(LandRecordsDtoOne dto) {
		EntityManager em = emf.createEntityManager();
		em.getTransaction().begin();
		em.persist(dto);
		em.getTransaction().commit();
		return true;
	}

	@Override
	public List<LandRecordsDtoOne> readAll() {
		EntityManager em = emf.createEntityManager();
		Query query = em.createNamedQuery("readAll");
		List<LandRecordsDtoOne> read = query.getResultList();
		System.out.println(read);
		return read;
	}

}
