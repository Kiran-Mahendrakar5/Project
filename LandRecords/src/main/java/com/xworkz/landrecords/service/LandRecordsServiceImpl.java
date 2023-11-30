package com.xworkz.landrecords.service;

import java.util.List;
import java.util.Properties;
import java.util.SplittableRandom;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.xworkz.landrecords.dto.LandRecordsDto;
import com.xworkz.landrecords.dto.LandRecordsDtoOne;
import com.xworkz.landrecords.repo.LandRecordsRepo;

import lombok.val;

@Service
public class LandRecordsServiceImpl implements LandRecordsService {
	@Autowired
	private LandRecordsRepo repo;

	@Override
	public boolean save(LandRecordsDto dto, Model model) {
		if (dto != null) {
			if (validate(dto, model)) {
				System.out.println("validate successfully to repo");
				repo.save(dto);
				System.out.println("sended successfully to repo");
				return true;

			}
		}
		System.out.println("dto is null");
		return false;

	}

	@Override
	public boolean validate(LandRecordsDto dto, Model model) {
		boolean isValid = true;
		if (dto != null) {
			if (dto.getAdminName() == null || dto.getAdminName().length() <= 3) {
				model.addAttribute("AdminName", "AdminName is not validate!!!");
				System.out.println("AdminName is not valid");
				isValid = false;
			}
			if (dto.getEmail() == null || dto.getEmail().length() <= 3) {
				model.addAttribute("Email", "Email is not validate!!!");
				System.out.println("Email is not valid");
				isValid = false;
			}
//			}
//			if (dto.getOtp() == null || dto.getOtp().length() < 3) {
//				model.addAttribute("Otp", "Otp is not validate");
//				System.out.println("Otp is not valid");
//				isValid = false;
//			}
		} else {
			System.out.println("dto is null");
			isValid = false;
		}
		return isValid;

	}

	@Override
	public LandRecordsDto findByEmail(String email, Model model) {
		if (email != null && !email.isEmpty()) {

			try {
				LandRecordsDto dto = repo.findByEmail(email);
				return dto;
			} catch (Exception e) {
				System.out.println("no result found");
				return null;
			}

		}
		model.addAttribute("emailnotvalidated", "Email Is Not Valid");
		return null;
	}

	@Override
	public String generateOtp() {
		int randomNumber = (int) ((Math.random() * 90000) + 1000);
		String otp = String.valueOf(randomNumber);
//		
		return otp;
	}

	@Override
	public boolean signIn(String email, Model model) {
		if (email != null && !email.isEmpty()) {
			LandRecordsDto dto = findByEmail(email, model);
			if (dto != null) {
				String otp = generateOtp();
				model.addAttribute("otpView", otp);
				System.out.println("Your OTP " + otp);
				boolean update = repo.updateOtpByEmail(otp, email);
				System.out.println(update);
				boolean sender = senderOtp(otp, email, model);
				return true;

			}
			System.out.println("not updated");
			return false;
		}
		model.addAttribute("email", "email is not valid");
		return false;
	}

	@Override
	public LandRecordsDto otpValidator(String otp, Model model) {
		try {
			LandRecordsDto dto = repo.findOtp(otp);
			System.out.println("this is otp validator in service");

			return dto;
		} catch (Exception e) {
			System.out.println("this is otp validator in service");
			System.out.println("Otp is Incorrect");
			model.addAttribute("otpValidated", "Otp is Incorrect");
			return null;
		}

	}

	@Override
	public boolean validate(LandRecordsDtoOne dto, Model model) {
		boolean valid = true;
		if (dto != null) {
			if (dto.getState() == null || dto.getState().isEmpty()) {
				System.out.println("Enter state");
				model.addAttribute("state", "Enter state");
				valid = false;
			}
			if (dto.getDistrict() == null || dto.getDistrict().isEmpty()) {
				System.out.println("Enter District");
				model.addAttribute("district", "Enter District");
				valid = false;
			}
			if (dto.getTaluk() == null || dto.getTaluk().isEmpty()) {
				System.out.println("Enter Taluk");
				model.addAttribute("Taluk", "Enter Taluk");
				valid = false;
			}
			if (dto.getPost() == null || dto.getPost().isEmpty()) {
				System.out.println("Enter Post");
				model.addAttribute("Post", "Enter Post");
				valid = false;
			}
			if (dto.getVillage() == null || dto.getVillage().isEmpty()) {
				System.out.println("Enter Village");
				model.addAttribute("Village", "Enter Village");
				valid = false;
			}
			if (dto.getOwnerName() == null || dto.getOwnerName().isEmpty()) {
				System.out.println("Enter Owner name && owner name is invalid");
				model.addAttribute("OwnerName", "Enter Owner name && owner name is invalid");
				valid = false;
			}
			if (dto.getMobileNumber() == null || dto.getMobileNumber().isEmpty()
					|| dto.getMobileNumber().length() <= 9) {
				System.out.println("Enter Mobile Number or Mobile Number is invalid");
				model.addAttribute("MobileNumber", "Enter Mobile Number or Mobile Number is invalid");
				valid = false;
			}
			if (dto.getAadharNumber() == null || dto.getAadharNumber().isEmpty()) {
				System.out.println("Enter Aadhar Number or Aadhar number is invalid");
				model.addAttribute("AadharNumber", "Enter Aadhar Number or Aadhar number is invalid");
				valid = false;
			}
			if (dto.getHissaNumber() == null || dto.getHissaNumber().isEmpty()) {
//				System.out.println("Enter Hissa Number");
				model.addAttribute("HissaNumber", "Enter Hissa Number");
				valid = false;
			}
			if (dto.getServeNumber() == null || dto.getServeNumber().isEmpty()) {
//				System.out.println("Enter Servey Number");
				model.addAttribute("SurveNumber", "Enter Servey Number");
				valid = false;
			}
			if (dto.getYear() == null || dto.getYear().isEmpty()) {
				System.out.println("Enter Year");
				model.addAttribute("Year", "Enter Year");
				valid = false;
			}

		} else {
			System.out.println("dto is valid ......saving");
			valid = false;
		}
		System.out.println("valid");
		return valid;
	}

	@Override
	public boolean saveRecords(LandRecordsDtoOne dto, Model model) {
		if (validate(dto, model)) {
			System.out.println("details is saving");
			return repo.saveRecords(dto);
		}
		return false;
	}

	@Override
	public List<LandRecordsDtoOne> readAll() {
		return repo.readAll();
	}

	@Override
	public boolean senderOtp(String otp, String Email, Model model) {

		String senderEmail = "kiranms.xworkz@outlook.com";
		String senderPassword = "Kiran@28";
		String recipientEmail = Email;
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
	public boolean deleteByserveNumber(String hissaNumber, String serveNumber) {
		if (hissaNumber != null && !hissaNumber.isEmpty()) {
			if (serveNumber != null && !serveNumber.isEmpty()) {
				return repo.deleteByserveNumber(hissaNumber, serveNumber, 1);

			}
			return false;
		}
		return false;
	}

	@Override
	public List<LandRecordsDtoOne> findByvillage(String village) {
		if (village != null && !village.isEmpty()) {
			try {
				List<LandRecordsDtoOne> dtos = repo.findByvillage(village);
				System.out.println(dtos);
				return dtos;
			} catch (Exception e) {
				System.out.println("catch block find bt village");
				return null;
			}
		}
		System.out.println("not finded service impl false");
		return null;
	}

	@Override
	public boolean updateDetailsByHissaAndSurveyNumber(LandRecordsDtoOne dto, Model model) {
		if (dto.getOwnerName() != null && !dto.getOwnerName().isEmpty()) {
			if (dto.getMobileNumber() != null && !dto.getMobileNumber().isEmpty()) {
				if (dto.getAadharNumber() != null && !dto.getAadharNumber().isEmpty()) {
					if (dto.getYear() != null && !dto.getYear().isEmpty()) {
						if (dto.getHissaNumber() != null && !dto.getHissaNumber().isEmpty()) {
							if (dto.getServeNumber() != null && !dto.getServeNumber().isEmpty()) {
								System.out.println("validated for update");
								return repo.updateDetailsByHissaAndSurveyNumber(dto.getOwnerName(),
										dto.getMobileNumber(), dto.getAadharNumber(), dto.getYear(),
										dto.getHissaNumber(), dto.getServeNumber(), 0);

							}
							System.out.println("invalid surve number");
							return false;
						}
						System.out.println("invalid hissa number");
						return false;
					}
					System.out.println("invalid year number");
					return false;

				}
				System.out.println("invalid aadhar number");
				return false;
			}
			System.out.println("invalid mobile number");
			return false;
		}
		System.out.println("invalid owner number");
		return false;
	}

	@Override
	public LandRecordsDtoOne ifExist(String hissaNumber, String serveNumber, Model model) {
		if (hissaNumber != null && !hissaNumber.isEmpty()) {
			if (serveNumber != null && !serveNumber.isEmpty()) {
				return repo.ifExist(hissaNumber, serveNumber);
			}
			return null;
		}
		return null;
	}

	@Override
	public boolean updateStatus(String hissaNumber, String serveNumber) {
		if (hissaNumber != null && !hissaNumber.isEmpty()) {
			if (serveNumber != null && !serveNumber.isEmpty()) {
				repo.updateStatus(hissaNumber, serveNumber);
				return true;

			}
			System.out.println("servenumber invalid");
			return false;
		}
		System.out.println("hissanumber invalid");
		return false;
	}

	
}
