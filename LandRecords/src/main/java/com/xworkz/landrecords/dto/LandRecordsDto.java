package com.xworkz.landrecords.dto;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQuery;
import javax.persistence.Table;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name = "LandRecordsDto_table")
@NamedQuery(name="findEmail" ,query = "select dto from LandRecordsDto dto where dto.email=:em")
@NamedQuery(name = "updateOtp" ,query = "update LandRecordsDto dto set dto.otp=:op where dto.email=:eml")
@NamedQuery(name="findOtp" ,query = "select dto from LandRecordsDto dto where dto.otp=:ot")
public class LandRecordsDto implements Serializable {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	private String adminName;
	private String email;
	private String otp;
	public LandRecordsDto() {
		super();
		// TODO Auto-generated constructor stub
	}
	public LandRecordsDto(int id, String adminName, String email, String otp) {
		super();
		this.id = id;
		this.adminName = adminName;
		this.email = email;
		this.otp = otp;
	}
	@Override
	public String toString() {
		return "LandRecordsDto [id=" + id + ", adminName=" + adminName + ", email=" + email + ", otp=" + otp + "]";
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getAdminName() {
		return adminName;
	}
	public void setAdminName(String adminName) {
		this.adminName = adminName;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getOtp() {
		return otp;
	}
	public void setOtp(String otp) {
		this.otp = otp;
	}
	
	
	
	

}
