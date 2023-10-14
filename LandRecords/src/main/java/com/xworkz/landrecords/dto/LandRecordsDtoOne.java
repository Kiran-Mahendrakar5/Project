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
@Table(name = "LandRecordsDtoOne_table")
@NamedQuery(name = "readAll", query = "select dto from LandRecordsDtoOne dto")

public class LandRecordsDtoOne implements Serializable{
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	private String State;
	private String district;
	private String taluk;
	private String Hobli;
	private String village;
	private String ownerName;
	private String mobileNumber;
	private String hissaNumber;
	private String aadharNumber;
	private String serveNumber;
	private String year;
	
	public LandRecordsDtoOne() {
		super();
		// TODO Auto-generated constructor stub
	}
	public LandRecordsDtoOne(int id, String state, String district, String taluk, String hobli, String village,
			String ownerName, String mobileNumber, String hissaNumber, String aadharNumber, String serveNumber,
			String year) {
		super();
		this.id = id;
		State = state;
		this.district = district;
		this.taluk = taluk;
		Hobli = hobli;
		this.village = village;
		this.ownerName = ownerName;
		this.mobileNumber = mobileNumber;
		this.hissaNumber = hissaNumber;
		this.aadharNumber = aadharNumber;
		this.serveNumber = serveNumber;
		this.year = year;
	}
	@Override
	public String toString() {
		return "LandRecordsDtoOne [id=" + id + ", State=" + State + ", district=" + district + ", taluk=" + taluk
				+ ", Hobli=" + Hobli + ", village=" + village + ", ownerName=" + ownerName + ", mobileNumber="
				+ mobileNumber + ", hissaNumber=" + hissaNumber + ", aadharNumber=" + aadharNumber + ", serveNumber="
				+ serveNumber + ", year=" + year + "]";
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getState() {
		return State;
	}
	public void setState(String state) {
		State = state;
	}
	public String getDistrict() {
		return district;
	}
	public void setDistrict(String district) {
		this.district = district;
	}
	public String getTaluk() {
		return taluk;
	}
	public void setTaluk(String taluk) {
		this.taluk = taluk;
	}
	public String getHobli() {
		return Hobli;
	}
	public void setHobli(String hobli) {
		Hobli = hobli;
	}
	public String getVillage() {
		return village;
	}
	public void setVillage(String village) {
		this.village = village;
	}
	public String getOwnerName() {
		return ownerName;
	}
	public void setOwnerName(String ownerName) {
		this.ownerName = ownerName;
	}
	public String getMobileNumber() {
		return mobileNumber;
	}
	public void setMobileNumber(String mobileNumber) {
		this.mobileNumber = mobileNumber;
	}
	public String getHissaNumber() {
		return hissaNumber;
	}
	public void setHissaNumber(String hissaNumber) {
		this.hissaNumber = hissaNumber;
	}
	public String getAadharNumber() {
		return aadharNumber;
	}
	public void setAadharNumber(String aadharNumber) {
		this.aadharNumber = aadharNumber;
	}
	public String getServeNumber() {
		return serveNumber;
	}
	public void setServeNumber(String serveNumber) {
		this.serveNumber = serveNumber;
	}
	public String getYear() {
		return year;
	}
	public void setYear(String year) {
		this.year = year;
	}
	
	
	
	

}
