package com.xworkz.creativity.dto;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.Data;

@Data
@Entity
@Table(name = "Register_table")



public class CreativityDto implements Serializable {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	private String name;
	private String email;
	private String dateOfBirth;
	private String phoneNumber;
	private String location;
	private String fatherName;
	private String motherName;
	public CreativityDto() {
		super();
		// TODO Auto-generated constructor stub
	}
	public CreativityDto(int id, String name, String email, String dateOfBirth, String phoneNumber, String location,
			String fatherName, String motherName) {
		super();
		this.id = id;
		this.name = name;
		this.email = email;
		this.dateOfBirth = dateOfBirth;
		this.phoneNumber = phoneNumber;
		this.location = location;
		this.fatherName = fatherName;
		this.motherName = motherName;
	}
	@Override
	public String toString() {
		return "CreativityDto [id=" + id + ", name=" + name + ", email=" + email + ", dateOfBirth=" + dateOfBirth
				+ ", phoneNumber=" + phoneNumber + ", location=" + location + ", fatherName=" + fatherName
				+ ", motherName=" + motherName + "]";
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
	public String getDateOfBirth() {
		return dateOfBirth;
	}
	public void setDateOfBirth(String dateOfBirth) {
		this.dateOfBirth = dateOfBirth;
	}
	public String getPhoneNumber() {
		return phoneNumber;
	}
	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public String getFatherName() {
		return fatherName;
	}
	public void setFatherName(String fatherName) {
		this.fatherName = fatherName;
	}
	public String getMotherName() {
		return motherName;
	}
	public void setMotherName(String motherName) {
		this.motherName = motherName;
	}
	
	
	
	

}
