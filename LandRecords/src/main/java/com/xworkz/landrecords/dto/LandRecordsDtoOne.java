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
@NamedQuery(name = "Deleteserve", query = "delete from LandRecordsDtoOne dto where dto.serveNumber=:dt")
@NamedQuery(name = "findByvillage", query = "select dto from LandRecordsDtoOne dto where dto.village=:vi")
//@NamedQuery(name = "updateByHissaNAndSurveyN", query = "update LandRecordsDtoOne dto set dto.hissaNumber=:hnum where dto.serveNumber=:sernum dto.year=:ye dto.aadharNumber=:aanum dto.mobileNumber=:mnum dto.ownerName=:onum")
@NamedQuery(name = "updateByHissaNAndSurveyN", query = "update LandRecordsDtoOne dto set dto.hissaNumber=:hnum where dto.serveNumber=:sernum and dto.year=:ye and dto.aadharNumber=:aanum and dto.mobileNumber=:mnum and dto.ownerName=:onum")
@NamedQuery(name = "updateByAadharMobileOwnerYear", query = "UPDATE LandRecordsDtoOne dto SET dto.hissaNumber = :hnum, dto.serveNumber = :sernum WHERE dto.aadharNumber = :aanum AND dto.mobileNumber = :mnum AND dto.ownerName = :onum AND dto.year = :ye")


public class LandRecordsDtoOne implements Serializable{
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private String state;
	private String district;
	private String taluk;
	private String post;
	private String village;
	private String ownerName;
	private String mobileNumber;
	private String aadharNumber;
	private String hissaNumber;
	private String serveNumber;
	private String year;
	
	public LandRecordsDtoOne() {
		super();
}

	public LandRecordsDtoOne(int id, String state, String district, String taluk, String post, String village,
			String ownerName, String mobileNumber, String aadharNumber, String hissaNumber, String serveNumber,
			String year) {
		super();
		this.id = id;
		this.state = state;
		this.district = district;
		this.taluk = taluk;
		this.post = post;
		this.village = village;
		this.ownerName = ownerName;
		this.mobileNumber = mobileNumber;
		this.aadharNumber = aadharNumber;
		this.hissaNumber = hissaNumber;
		this.serveNumber = serveNumber;
		this.year = year;
	}

	@Override
	public String toString() {
		return "LandRecordsDtoOne [id=" + id + ", state=" + state + ", district=" + district + ", taluk=" + taluk
				+ ", post=" + post + ", village=" + village + ", ownerName=" + ownerName + ", mobileNumber="
				+ mobileNumber + ", aadharNumber=" + aadharNumber + ", hissaNumber=" + hissaNumber + ", serveNumber="
				+ serveNumber + ", year=" + year + "]";
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
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

	public String getPost() {
		return post;
	}

	public void setPost(String post) {
		this.post = post;
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

	public String getAadharNumber() {
		return aadharNumber;
	}

	public void setAadharNumber(String aadharNumber) {
		this.aadharNumber = aadharNumber;
	}

	public String getHissaNumber() {
		return hissaNumber;
	}

	public void setHissaNumber(String hissaNumber) {
		this.hissaNumber = hissaNumber;
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