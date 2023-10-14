package com.xworkz.landrecords.service;

import java.util.List;
import java.util.SplittableRandom;

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
				model.addAttribute("AdminName", "AdminName is not validate");
				System.out.println("AdminName is not valid");
				isValid = false;
			}
			if (dto.getEmail() == null || dto.getEmail().length() <= 3) {
				model.addAttribute("Email", "Email is not validate");
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
		model.addAttribute("emailnotvalidated", "email is not valid");
		return null;
	}

	@Override
	public String generateOtp() {
		int randomNumber = (int) ((Math.random() * 90000) + 1000);
		String otp = String.valueOf(randomNumber);
		return otp;
	}

	@Override
	public boolean signIn(String email, Model model) {
		if (email != null && !email.isEmpty()) {
			LandRecordsDto dto = findByEmail(email, model);
			if (dto != null) {
				String otp = generateOtp();
				boolean update = repo.updateOtpByEmail(otp, email);
				System.out.println(update);
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
			System.out.println(dto);
			return dto;
		} catch (Exception e) {
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
			if (dto.getHobli() == null || dto.getHobli().isEmpty()) {
				System.out.println("Enter Hobli");
				model.addAttribute("Hobli", "Enter Hobli");
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
			if (dto.getMobileNumber() == null || dto.getMobileNumber().isEmpty()) {
				System.out.println("Enter Mobile Number or Mobile Number is invalid");
				model.addAttribute("MobileNumber", "Enter Mobile Number or Mobile Number is invalid");
				valid = false;
			}
			if (dto.getAadharNumber() == null || dto.getAadharNumber().isEmpty()) {
				System.out.println("Enter Aadhar Number or Aadhar number is invalid");
				model.addAttribute("AadharNumber", "Enter Aadhar Number or Aadhar number is invalid");
				valid = false;
			}
			if (dto.getServeNumber() == null || dto.getServeNumber().isEmpty()) {
				System.out.println("Enter Servey Number");
				model.addAttribute("SurveNumber", "Enter Servey Number");
				valid = false;
			}
			if (dto.getHissaNumber() == null || dto.getHissaNumber().isEmpty()) {
				System.out.println("Enter Hissa Number");
				model.addAttribute("HissaNumber", "Enter Hissa Number");
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
}
