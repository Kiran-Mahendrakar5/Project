package com.xworkz.landrecords.repo;

import java.util.List;

import javax.enterprise.inject.Model;

import com.xworkz.landrecords.dto.LandRecordsDto;
import com.xworkz.landrecords.dto.LandRecordsDtoOne;

public interface LandRecordsRepo {
	
	public boolean save(LandRecordsDto dto);
	
	public LandRecordsDto findByEmail(String email);
	
	public boolean updateOtpByEmail(String otp,String email);
	
	public LandRecordsDto findOtp(String otp);
	
	public boolean saveRecords(LandRecordsDtoOne dto);
	
	public List<LandRecordsDtoOne> readAll();
	
	public boolean deleteByserveNumber(String hissaNumber,String serveNumber,int status);
	
	public List<LandRecordsDtoOne> findByvillage(String village);
	
	public	boolean updateDetailsByHissaAndSurveyNumber(String ownerName, String mobileNumber, String aadharNumber, String year,
			String hissaNumber, String serveNumber, int status);
	
	public LandRecordsDtoOne ifExist(String hissaNumber , String serveNumber , int status);



	

}
