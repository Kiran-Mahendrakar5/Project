package com.xworkz.landrecords.service;

 

import java.util.List;

import org.springframework.ui.Model;

import com.xworkz.landrecords.dto.LandRecordsDto;
import com.xworkz.landrecords.dto.LandRecordsDtoOne;

public interface LandRecordsService {
	
	public boolean validate(LandRecordsDto dto, Model model);
	
	public boolean save(LandRecordsDto dto , Model model);
	
	public LandRecordsDto findByEmail(String email,Model model);
	
	public String generateOtp();
	
	public boolean signIn(String email,Model model);
	
	public LandRecordsDto otpValidator(String otp,Model model);
	
	public boolean validate(LandRecordsDtoOne dto ,Model model);
	
	public boolean saveRecords(LandRecordsDtoOne dto,Model model);
	
	public boolean senderOtp(String otp , String Email ,Model model);
	
	public List<LandRecordsDtoOne> readAll();
	
	public boolean deleteByserveNumber(String hissaNumber,String serveNumber);
	
	public List<LandRecordsDtoOne> findByvillage(String village);
	
	public boolean updateDetailsByHissaAndSurveyNumber(LandRecordsDtoOne dto,Model model);
	
	public LandRecordsDtoOne ifExist(String hissaNumber , String surveyNumber, Model model);

	public boolean updateStatus(String hissaNumber, String serveNumber);

	


	

	
	

}
