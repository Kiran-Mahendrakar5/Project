package com.xworkz.landrecords.service;

import java.io.UnsupportedEncodingException;

import org.springframework.ui.Model;

import com.xworkz.landrecords.dto.UserDto;

public interface UserService {

	public boolean saveUserDetails(UserDto dto, Model model) throws Exception, NullPointerException;

	public UserDto ifExistss(String email, String password, Model model);

	public UserDto logIn(String email, String password, Model model);

	public UserDto findByEmail(String email, Model model);

	public String randomotp(int length);

	public boolean checkotp(String email, Model model) throws Exception;

	public UserDto findByOtp(String otp, Model models);

	public boolean senderOtp(String otp, String email);

	public boolean updatePasswords(String password, String confirmPassword, String email, Model model) throws Exception;

	public boolean updateOtpByEmail(String otp, String email);

	public String encryptPWD(String password, String Secretkey) throws Exception;

	public String decryptPWD(String encryptPwd, String Secretkey) throws UnsupportedEncodingException;
	
	public UserDto emailExists(String email);
	
	public UserDto passwordExists(String password);

}
