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
@NamedQuery(name = "Deleteserve", query = "update LandRecordsDtoOne dto set dto.status=1 where dto.hissaNumber=:hn and dto.serveNumber=:sn")
@NamedQuery(name = "findByvillage", query = "select dto from LandRecordsDtoOne dto where dto.village=:vi")
@NamedQuery(name = "updateByHissaNAndSurveyN", query = "update LandRecordsDtoOne dto set dto.ownerName=:on, dto.mobileNumber=:mn, dto.aadharNumber=:an, dto.year=:yr where dto.hissaNumber=:hn and serveNumber=:sn and dto.status=:st")
@NamedQuery(name = "ifExist", query = "Select dto from LandRecordsDtoOne dto where dto.hissaNumber=:hn and dto.serveNumber=:sn")
@NamedQuery(name = "updateStatus", query = "update LandRecordsDtoOne dto set dto.status=1 where hissaNumber =:hissa and serveNumber =:surve")

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
	private int status = 0;
	public LandRecordsDtoOne() {
		super();
		// TODO Auto-generated constructor stub
	}
	public LandRecordsDtoOne(int id, String state, String district, String taluk, String post, String village,
			String ownerName, String mobileNumber, String aadharNumber, String hissaNumber, String serveNumber,
			String year, int status) {
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
		this.status = status;
	}
	@Override
	public String toString() {
		return "LandRecordsDtoOne [id=" + id + ", state=" + state + ", district=" + district + ", taluk=" + taluk
				+ ", post=" + post + ", village=" + village + ", ownerName=" + ownerName + ", mobileNumber="
				+ mobileNumber + ", aadharNumber=" + aadharNumber + ", hissaNumber=" + hissaNumber + ", serveNumber="
				+ serveNumber + ", year=" + year + ", status=" + status + "]";
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
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	
	
	
}