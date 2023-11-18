package com.xworkz.landrecords.repo;

import org.springframework.ui.Model;

import com.xworkz.landrecords.dto.UserDto;

public interface UserRepository {
	
public boolean saveUserDetails(UserDto dto);
	
	public UserDto ifExistss(String email, String password, Model model);
	
	public UserDto emailExists(String email);
	
	public boolean updateOtpByEmail(String otp, String email);

	public UserDto findByOtp(String otp);
	
	public UserDto passwordExists(String password);
	
	public boolean updatePasswords(String password, String confirmPassword, String email, Model model);
	
	
	
	
	
	
}
