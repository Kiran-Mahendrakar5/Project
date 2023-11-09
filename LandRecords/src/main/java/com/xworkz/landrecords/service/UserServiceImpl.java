package com.xworkz.landrecords.service;

import java.util.Properties;
import java.util.Random;
import java.util.Set;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.persistence.EntityManager;
import javax.persistence.NoResultException;
import javax.persistence.Query;
import javax.validation.ConstraintViolation;
import javax.validation.Validation;
import javax.validation.Validator;
import javax.validation.ValidatorFactory;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.xworkz.landrecords.dto.LandRecordsDto;
import com.xworkz.landrecords.dto.UserDto;
import com.xworkz.landrecords.repo.UserRepository;

@Service
public class UserServiceImpl implements UserService {

	@Autowired
	private UserRepository Repo;

	@Override
	public boolean saveUserDetails(UserDto dto, Model model) throws NullPointerException {
		if (dto.getName() != null) {
			if (dto.getMobileNumber() > 111111111) {
				if (dto.getPassword().equals(dto.getConfirmPassword())) {
//					ValidatorFactory factory = Validation.buildDefaultValidatorFactory();
//					Validator validator = factory.getValidator();
//					Set<ConstraintViolation<UserDto>> violation = validator.validate(dto);

//					if (violation.isEmpty()) {
					UserDto exist = ifExistss(dto.getEmail(), dto.getPassword(), model);
					if (exist != null) {
						System.out.println("Account Already Exist please change emailORPassward");
						return false;
					}

					boolean saving = Repo.saveUserDetails(dto);
					System.out.println(saving);
					System.out.println("Data Validated");
					return true;

				} else {
					System.out.println("Data is not valid");

				}

			} else {
				model.addAttribute("ConfirmPassword", "Invalid Password, Check your password");
				System.out.println("Invalid Password");
				return false;
			}

		} else {
			model.addAttribute("MobileNumber", "Invalid Mobile Number");
			System.out.println("Mobile Number is not valid");
			return false;
		}
		return false;
	}

	@Override
	public UserDto ifExistss(String email, String password, Model model) {
		UserDto Exist = Repo.ifExistss(email, password, model);

		if (Exist != null) {
			model.addAttribute("Exis", "Already Exist");
			return Exist;
		}
		return null;
	}

	@Override
	public UserDto logIn(String email, String password, Model model) {
		try {
			if (email != null) {
				if (password != null) {
					UserDto dto = Repo.ifExistss(email, password, model);
					if (dto != null) {
						return dto;
					}
					model.addAttribute("Account", "Account not Found");
					return null;
				}
				model.addAttribute("Passwo", "Invalid Password");
				return null;
			}
			model.addAttribute("Email", "Invalid Email, Please Check Email");
			return null;
		} catch (Exception e) {
			System.out.println("login catch block");
		}
		return null;

	}

	@Override
	public UserDto findByEmail(String email, Model model) {
		if (email != null) {
			UserDto dtorepo = Repo.emailExists(email);
			if (dtorepo != null) {
				return dtorepo;
			}
		}
		return null;
	}

	@Override
	public String randomotp(int length) {
		String numbers = "0123456789";
		Random rndm_method = new Random();
		char[] otp = new char[length];
		for (int i = 0; i < length; i++) {
			otp[i] = numbers.charAt(rndm_method.nextInt(numbers.length()));
		}
		return new String(otp);

	}

	@Override
	public boolean checkotp(String email, Model model) {
//		UserDto findemail = findByEmail(email, model);
//		if (findemail != null) {
//			String otp = randomotp(6);
//			System.out.println(otp);
//			model.addAttribute("checkotp", otp);
//			return true;
//		}
//		return false;
//	}
//		if (email != null && !email.isEmpty()) {
			UserDto  dto = findByEmail(email, model);
			if (dto != null) {
				String otp = randomotp(6);
				model.addAttribute("checkotp", otp);
				System.out.println("otp is a otp " + otp);
				boolean update = Repo.updateOtpByEmail(otp, email);
				System.out.println(update);
				boolean sender = senderOtp(otp, email);
				return true;

			}
			System.out.println("not updated");
			return false;
		}
//		model.addAttribute("email", "email is not valid");
//		return false;
//	}


//	public UserDto findByOtp(String otp, Model models) {
//		if (otp != null) {
//			UserDto findOtp = Repo.findByOtp(otp);
//			if(findOtp.getOtp().equals(otp));
//			return findOtp;
//		}else {
//			models.addAttribute("notfindotp", "otp not matched");
//			return null;
//		}
//	
//	}
//	public UserDto findByOtp(String otp, Model models) {
//	    if (otp != null) {
//	        UserDto findOtp = Repo.findByOtp(otp);
//	        if (findOtp != null && findOtp.getOtp().equals(otp)) {
//	            return findOtp;
//	        } else {
//	            models.addAttribute("notfindotp", "OTP not matched");
//	            return null;
//	        }
//	    } else {
//	        models.addAttribute("notfindotp", "OTP is null");
//	        return null;
//	    }
//	}
	@Override
	public UserDto findByOtp(String otp, Model models) {
//	    if (otp != null) {
	        try {
	            UserDto findOtp = Repo.findByOtp(otp);
	            if (findOtp.getOtp().equals(otp)) {
	                return findOtp;
	            } else {
	                models.addAttribute("notfindotp", "OTP not matched");
	                return null;
	            }
	        } catch (NoResultException e) {
	            models.addAttribute("notfindotp", "OTP not found");
	            return null;
	        }
//	    } else {
//	        models.addAttribute("notfindotp", "OTP is null");
//	        return null;
	    }
//	}

	@Override
	public boolean senderOtp(String otp, String email) {
		String senderEmail = "kiranms.xworkz@outlook.com";
		String senderPassword = "Kiran@28";
		String recipientEmail = email;
		String subject = "Your OTP Code";
		String messageText = "Dear User,Your OTP For Registration Is:" + otp + " Use This Passward To Validate Your Login ";
		System.out.println(otp);

		// Set up JavaMail properties
		Properties properties = new Properties();
		properties.put("mail.smtp.auth", "true");
		properties.put("mail.smtp.starttls.enable", "true");
		properties.put("mail.smtp.host", "smtp.office365.com");// Simple Mail Transfer Protocol
		properties.put("mail.smtp.port", "587");

		// Create a session with authentication
		Session session = Session.getInstance(properties, new Authenticator() {
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication(senderEmail, senderPassword);
			}
		});

		try {
			// Create a MimeMessage object
			Message message = new MimeMessage(session);

			// Set the sender, recipient, subject, and message body
			message.setFrom(new InternetAddress(senderEmail));
			message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(recipientEmail));
			message.setSubject(subject);
			message.setText(messageText);

			// Send the email
			Transport.send(message);

			System.out.println("OTP email sent successfully!");
		} catch (MessagingException e) {
			e.printStackTrace();
		}

		return true;

	
	}

	@Override
	public boolean updatePasswords(String password, String Passwords, String email, Model model) {
		if (password != null && password.length() > 8 && password.length() < 10) {
			if(password.equals(Passwords)) {
			boolean updatepass = 	Repo.updatePasswords(password, Passwords, email, model);
			System.out.println(updatepass);
				return updatepass;
				
			
			}
			model.addAttribute("Mismatch", "The password and confirm password must be same");
			return false;
		}
		
		model.addAttribute("Validpwd", "Please give the password minimum length 8 to maximum 15");
		return false;
		
	}

	@Override
	public boolean updateOtpByEmail(String otp, String email) {
			if(email!=null) {
				
			boolean update = Repo.updateOtpByEmail(otp, email);
			return update;
			}
		
		return false;
	}
	
	

}



