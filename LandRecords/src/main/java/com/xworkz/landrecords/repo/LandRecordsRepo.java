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

}
