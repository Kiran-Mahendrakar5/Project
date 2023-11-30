package com.xworkz.landrecords.service;

import java.io.UnsupportedEncodingException;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.KeySpec;
import java.util.Base64;
import java.util.Properties;
import java.util.Random;
import java.util.Set;

import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.SecretKey;
import javax.crypto.SecretKeyFactory;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.PBEKeySpec;
import javax.crypto.spec.SecretKeySpec;
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
	public boolean saveUserDetails(UserDto dto, Model model) throws Exception, NullPointerException {
			if (dto.getMobileNumber() > 111111111) {
				if (dto.getPassword().equals(dto.getConfirmPassword())) {
//				ValidatorFactory factory = Validation.buildDefaultValidatorFactory();
//				Validator validator = factory.getValidator();
//				Set<ConstraintViolation<UserDto>> violation = validator.validate(dto);
					UserDto exist = emailExists(dto.getEmail());
					UserDto pwdExist = passwordExists(dto.getPassword());
					if (exist == null) {
						if (pwdExist == null) {
							String epwd = encryptPWD(dto.getPassword(), "ThisIsSecretKey");
							System.out.println(epwd);
							dto.setPassword(epwd);
							dto.setConfirmPassword(epwd);
							boolean save = Repo.saveUserDetails(dto);
							System.out.println(save);
							System.out.println("Data Validated");
							return true;
						}
						System.out.println("Your Password is Already Exist");
						return false;
					}
					System.out.println("Your Email Account Already Exist");
					return false;
				} else {
					model.addAttribute("ConfirmPassword", "Invalid Password, Check your password");
					System.out.println("Invalid Password, Check your password");
					return false;
				}

			} else {
				model.addAttribute("MobileNumber", "Invalid Mobile Number");
				System.out.println("Mobile Number is not valid");
				return false;
			}
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
					UserDto dto = Repo.emailExists(email);
					if (dto != null) {
						String decrypt = decryptPWD(dto.getPassword(), "ThisIsSecretKey");
						System.out.println(decrypt);
						if (decrypt.equals(password)) {
							return dto;
						}
						model.addAttribute("NotMatched", "Password is Not Matched");
						System.out.println("wrong passward");
						return null;

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

		UserDto dto = findByEmail(email, model);
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
		String messageText = "Dear User,Your OTP For Registration Is:" + otp
				+ " Use This Passward To Validate Your Login ";
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
	public boolean updatePasswords(String password, String confirmPassword, String email, Model model)
			throws Exception {
		if (password != null && password.length() > 8 && password.length() <= 10) {
			UserDto dto = ifExistss(email, confirmPassword, model);
			if (confirmPassword != null && confirmPassword.equals(password)) {
				String encrypt = encryptPWD(password, "ThisIsSecretKey");
				System.out.println(encrypt);
				boolean updatepass = Repo.updatePasswords(encrypt, encrypt, email, model);
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
		if (email != null) {

			boolean update = Repo.updateOtpByEmail(otp, email);
			return update;
		}

		return false;
	}

	@Override
	public String encryptPWD(String password, String Secretkey) throws Exception {
		SecretKeyFactory factory = SecretKeyFactory.getInstance("PBKDF2WithHmacSHA256");
		KeySpec spec = new PBEKeySpec(Secretkey.toCharArray(), Secretkey.getBytes(), 65536, 256);
		SecretKey secret = new SecretKeySpec(factory.generateSecret(spec).getEncoded(), "AES");

		Cipher cipher = Cipher.getInstance("AES/CBC/PKCS5Padding");
		cipher.init(Cipher.ENCRYPT_MODE, secret);
		byte[] iv = cipher.getParameters().getParameterSpec(IvParameterSpec.class).getIV();

		byte[] encryptedPassword = cipher.doFinal(password.getBytes("UTF-8"));
		byte[] combined = new byte[iv.length + encryptedPassword.length];
		System.arraycopy(iv, 0, combined, 0, iv.length);
		System.arraycopy(encryptedPassword, 0, combined, iv.length, encryptedPassword.length);

		return Base64.getEncoder().encodeToString(combined);
	}

	@Override
	public String decryptPWD(String encryptPwd, String Secretkey) {
		byte[] combined = Base64.getDecoder().decode(encryptPwd);

		byte[] iv = new byte[16];
		byte[] encrypted = new byte[combined.length - 16];
		System.arraycopy(combined, 0, iv, 0, 16);
		System.arraycopy(combined, 16, encrypted, 0, encrypted.length);

		SecretKeyFactory factory;
		try {
			factory = SecretKeyFactory.getInstance("PBKDF2WithHmacSHA256");

			KeySpec spec = new PBEKeySpec(Secretkey.toCharArray(), Secretkey.getBytes(), 65536, 256);
			SecretKey secret;

			secret = new SecretKeySpec(factory.generateSecret(spec).getEncoded(), "AES");
			Cipher cipher;

			cipher = Cipher.getInstance("AES/CBC/PKCS5Padding");

			cipher.init(Cipher.DECRYPT_MODE, secret, new IvParameterSpec(iv));

			return new String(cipher.doFinal(encrypted), "UTF-8");

		} catch (UnsupportedEncodingException | IllegalBlockSizeException | BadPaddingException
				| InvalidKeySpecException | NoSuchPaddingException | InvalidKeyException
				| InvalidAlgorithmParameterException | NoSuchAlgorithmException e) {

			e.printStackTrace();

		}
		return null;
	}

	@Override
	public UserDto emailExists(String email) {
		try {
			UserDto eml = Repo.emailExists(email);
			if (eml != null) {
				return eml;
			}
		} catch (Exception e) {
			System.out.println("Email Exception Occured");
		}
		return null;

	}

	@Override
	public UserDto passwordExists(String password) {
		try {
			UserDto pass = Repo.passwordExists(password);
			if (pass != null) {
				return pass;
			}
		} catch (Exception e) {
			System.out.println("passward Exception Occured");
		}
		return null;

	}
}