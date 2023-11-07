package com.xworkz.landrecords.dto;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Size;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@Entity
@AllArgsConstructor
@NoArgsConstructor
@Table(name = "userdto_table")
@NamedQuery(name = "IfExist", query = "select dto from UserDto dto where dto.email=:email and dto.password=:password")
@NamedQuery(name="emailExists",query="select dto from UserDto dto where dto.email=:email ")
@NamedQuery(name = "updateOtpByEmail" , query = " update UserDto dto set dto.otp =: otps where dto.email=:emil")
@NamedQuery(name = "findByOtp" , query = "select dto from UserDto dto where dto.otp=:ott")
@NamedQuery(name="passwordExists",query="select dto from UserDto dto where dto.password=:passwor ")
@NamedQuery(name = "updatePasswords" , query = " update UserDto dto set dto.password =: passd ,dto.confirmPassword=:cpassd  where dto.email=:email")
public class UserDto implements Serializable{
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
//	@NotBlank
//	@NotEmpty
//	@Size(min = 4, max = 10, message = "InvalidName")
	private String name;
//	@NotBlank
//	@NotEmpty
//	@Email(message = "Check your Email Id")
	private String email;
	private Long mobileNumber;
//	@NotBlank
//	@NotEmpty
//	@Size(min = 12, max = 12, message = "Adhar Number valid")
	private String aadharNumber;
//	@NotBlank
//	@NotEmpty
//	@Size(min = 8, max = 14, message = "Password invalid")
	private String password;
//	@NotBlank
//	@NotEmpty
//	@Size(min = 8, max = 14, message = "Check your Password")
	private String confirmPassword;
	private String otp =null;
	
	public UserDto() {
		super();
		// TODO Auto-generated constructor stub
	}



	public UserDto(int id, String name, String email, Long mobileNumber, String aadharNumber, String password,
			String confirmPassword, String otp) {
		super();
		this.id = id;
		this.name = name;
		this.email = email;
		this.mobileNumber = mobileNumber;
		this.aadharNumber = aadharNumber;
		this.password = password;
		this.confirmPassword = confirmPassword;
		this.otp = otp;
	}



	@Override
	public String toString() {
		return "UserDto [id=" + id + ", name=" + name + ", email=" + email + ", mobileNumber=" + mobileNumber
				+ ", aadharNumber=" + aadharNumber + ", password=" + password + ", confirmPassword=" + confirmPassword
				+ ", otp=" + otp + "]";
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public Long getMobileNumber() {
		return mobileNumber;
	}

	public void setMobileNumber(Long mobileNumber) {
		this.mobileNumber = mobileNumber;
	}

	public String getAadharNumber() {
		return aadharNumber;
	}

	public void setAadharNumber(String aadharNumber) {
		this.aadharNumber = aadharNumber;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getConfirmPassword() {
		return confirmPassword;
	}

	public void setConfirmPassword(String confirmPassword) {
		this.confirmPassword = confirmPassword;
	}

	public String getOtp() {
		return otp;
	}

	public void setOtp(String otp) {
		this.otp = otp;
	}
	
	
	
	
	
	
	

}
