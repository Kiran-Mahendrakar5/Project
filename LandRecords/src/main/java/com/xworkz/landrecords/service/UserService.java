package com.xworkz.landrecords.service;

import org.springframework.ui.Model;

import com.xworkz.landrecords.dto.UserDto;

public interface UserService {
	
	public boolean saveUserDetails(UserDto dto, Model model);
	
	public UserDto ifExistss(String email, String password, Model model);
	
	public UserDto logIn(String email, String password, Model model);
	
	public UserDto findByEmail(String email, Model model);
	
	public String randomotp(int length);
	
	public boolean checkotp(String email, Model model);
	
	public UserDto findByOtp(String otp, Model models);
	
	public boolean senderOtp(String otp, String email);
	
	public boolean updatePasswords(String password, String Passwords, String email, Model model);

}
