package com.xworkz.landrecords.repo;

import java.util.List;

import javax.enterprise.inject.Model;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.NoResultException;
import javax.persistence.NonUniqueResultException;
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
		System.out.println("this is otp validator in repo");
		quary.setParameter("ot", otp);
		LandRecordsDto dto = quary.getSingleResult();

		return dto;
	}

	@Override
	public boolean saveRecords(LandRecordsDtoOne dto) {
		EntityManager em = emf.createEntityManager();
		em.getTransaction().begin();
		System.out.println("going to saveRecords");
		em.persist(dto);
		System.out.println("savedRecords");
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

	@Override
	public boolean deleteByserveNumber(String hissaNumber, String serveNumber, int status) {
		EntityManager em = emf.createEntityManager();
		em.getTransaction().begin();
		Query query = em.createNamedQuery("Deleteserve");
		query.setParameter("hn", hissaNumber);
		query.setParameter("sn", serveNumber);
		query.executeUpdate();
		try {
			em.getTransaction().commit();
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
	public List<LandRecordsDtoOne> findByvillage(String village) throws NoResultException, NonUniqueResultException {
		EntityManager em = emf.createEntityManager();

		TypedQuery<LandRecordsDtoOne> query = em.createNamedQuery("findByvillage", LandRecordsDtoOne.class);
		query.setParameter("vi", village);
		List<LandRecordsDtoOne> dto = query.getResultList();
		return dto;
	}

	@Override
	public boolean updateDetailsByHissaAndSurveyNumber(String ownerName, String mobileNumber, String aadharNumber,
			String year, String hissaNumber, String serveNumber, int status) {
		EntityManager em = emf.createEntityManager();
		em.getTransaction().begin();
		Query query = em.createNamedQuery("updateByHissaNAndSurveyN");
		query.setParameter("on", ownerName);
		query.setParameter("mn", mobileNumber);
		query.setParameter("an", aadharNumber);
		query.setParameter("yr", year);
		query.setParameter("hn", hissaNumber);
		query.setParameter("sn", serveNumber);
		query.setParameter("st", status);
		query.executeUpdate();
		try {
			em.getTransaction().commit();
			System.out.println("successfully updated");
			return true;
		} catch (Exception e) {
			em.getTransaction().rollback();
			e.printStackTrace();
			return false;
		} finally {
			System.out.println("closing");
			em.close();
		}

	}

	@Override
	public LandRecordsDtoOne ifExist(String hissaNumber, String serveNumber) {
		EntityManager em = emf.createEntityManager();
		TypedQuery<LandRecordsDtoOne> query = em.createNamedQuery("ifExist", LandRecordsDtoOne.class);
		query.setParameter("hn", hissaNumber);
		query.setParameter("sn", serveNumber);
//		query.setParameter("st", status);
		LandRecordsDtoOne dtos = query.getSingleResult();
		return dtos;
	}

	@Override
	public boolean updateStatus(String hissaNumber, String serveNumber) {
		EntityManager em = emf.createEntityManager();
		em.getTransaction().begin();
		Query query = em.createNamedQuery("updateStatus");
		query.setParameter("hissa", hissaNumber);
		query.setParameter("surve", serveNumber);
		query.executeUpdate();
		em.getTransaction().commit();
		return true;
	}

	

}
