package com.xworkz.landrecords.repo;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.NoResultException;
import javax.persistence.Query;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.ui.Model;

import com.xworkz.landrecords.dto.UserDto;

@Repository
public class UserRepositoryImpl implements UserRepository {

	@Autowired
	private EntityManagerFactory emf;

	@Override
	public boolean saveUserDetails(UserDto dto) {
		EntityManager em = emf.createEntityManager();
		em.getTransaction().begin();
		em.persist(dto);
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

//	@Override
//	public UserDto ifExistss(String email, String password, Model model) {
//		EntityManager em = emf.createEntityManager();
//		Query query = em.createNamedQuery("IfExist");
//		query.setParameter("email", email);
//		query.setParameter("password", password);
//		UserDto dto =  (UserDto) query.getSingleResult();
//		return dto;
//	}
	
	@Override
	public UserDto ifExistss(String email, String password, Model model) {
	    EntityManager em = emf.createEntityManager();
	    try {
	        Query query = em.createNamedQuery("IfExist");
	        query.setParameter("email", email);
	        query.setParameter("password", password);

	        UserDto dto = (UserDto) query.getSingleResult();

	        // Check if the result is not null (user exists)
	        if (dto != null) {
	            return dto;
	        } else {
	            // User not found, handle the case (e.g., throw an exception or return null)
	            // For simplicity, let's return null in this example
	            return null;
	        }
	    } catch (NoResultException e) {
	        // Handle the case where no user is found
	        // For simplicity, let's return null in this example
	    	model.addAttribute("entre", "No Data Found......!");
	        return null;
	    } finally {
	        em.close(); // Close the EntityManager in the finally block
	    }
	}


	@Override
	public UserDto emailExists(String email) {
		EntityManager em = emf.createEntityManager();
		Query query = em.createNamedQuery("emailExists");
		query.setParameter("email", email);
		UserDto dtos = (UserDto) query.getSingleResult();
		return dtos;
		
	}

	@Override
	public boolean updateOtpByEmail(String otp, String email) {
		EntityManager em = emf.createEntityManager();
		em.getTransaction().begin();	
		Query query = em.createNamedQuery("updateOtpByEmail");
		query.setParameter("otps", otp);
		System.out.println(otp);
		query.setParameter("emil", email);
		System.out.println(email);
		query.executeUpdate();
		em.getTransaction().commit();
		return true;
	}

	@Override
	public UserDto findByOtp(String otp) {
		EntityManager em = emf.createEntityManager();
		Query query = em.createNamedQuery("findByOtp");
		query.setParameter("ott", otp);
		UserDto find =  (UserDto) query.getSingleResult();
		return find;
		
	}

	@Override
	public UserDto passwordExists(String password) {
		EntityManager em = emf.createEntityManager();
		Query query = em.createNamedQuery("passwordExists");
		query.setParameter("passwor", password);
		UserDto pasexit = (UserDto) query.getSingleResult();
		return pasexit;
		
	}

	@Override
	public boolean updatePasswords(String password, String Passwords, String email, Model model) {
		EntityManager em = emf.createEntityManager();
		em.getTransaction().begin();
		Query query = em.createNamedQuery("updatePasswords");
		query.setParameter("passd", password);
		query.setParameter("cpassd", Passwords);
		query.setParameter("email", email);
		query.executeUpdate();
		em.getTransaction().commit();
		return true;
	}

}
