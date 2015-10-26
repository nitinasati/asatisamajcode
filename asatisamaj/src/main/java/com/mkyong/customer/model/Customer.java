package com.mkyong.customer.model;

import java.sql.Blob;
import java.util.Date;


public class Customer implements java.io.Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private long memberid;
	private String samajArea;
	private String fullName;
	private String fatherName;
	private String motherName;
	private String grandPaName;
	private String weight;
	private String idType;
	private String idNumber;
	private String timeHH;
	private String timeMM;
	private String timeAMPM;
	private String birthPlace;
	private String gender;
	private String height;
	private String color;
	private String manglik;
	private String birth;
	private String education;
	private String boardUnivercity;
	private String occupation;
	private String address;
	private String cityState;
	private String country;
	private String phoneStd;
	private String mobile;
	private String email;
	private String fatherOccupation;
	private String brothers;
	private String brothersMarried;
	private String sisters;
	private String sistersMarried;
	private String priorityOccupation;
	private String vansh;
	private String gotra;
	private String status;
	private Date createDateTime;
	private Date modifyDateTime;
	private String imagePath;

	public Customer(long memberid,String samajArea, String fullName, String fatherName,
			String motherName, String grandPaName, String idType, String idNumber, String timeHH,
			String timeMM, String timeAMPM, String birthPlace, String gender,
			String height, String weight, String color, String manglik, String birth,
			String education, String boardUnivercity, String occupation,
			String address, String cityState, String country, String phoneStd,
			String mobile, String email, String fatherOccupation,
			String brothers, String brothersMarried, String sisters,
			String sistersMarried,String priorityOccupation, String vansh, String gotra, String status,
			Date createDateTime, Date modifyDateTime,String imagePath) {

		this.memberid = memberid;
		this.samajArea = samajArea;
		this.fullName = fullName;
		this.fatherName = fatherName;
		this.motherName = motherName;
		this.grandPaName = grandPaName;
		this.idType = idType;
		this.idNumber = idNumber;
		this.timeHH = timeHH;
		this.timeMM = timeMM;
		this.timeAMPM = timeAMPM;
		this.birthPlace = birthPlace;
		this.gender = gender;
		this.height = height;
		this.weight = weight;
		this.color = color;
		this.manglik = manglik;
		this.birth = birth;
		this.education = education;
		this.boardUnivercity = boardUnivercity;
		this.occupation = occupation;
		this.address = address;
		this.cityState = cityState;
		this.country = country;
		this.phoneStd = phoneStd;
		this.mobile = mobile;
		this.email = email;
		this.fatherOccupation = fatherOccupation;
		this.brothers = brothers;
		this.brothersMarried = brothersMarried;
		this.sisters = sisters;
		this.sistersMarried = sistersMarried;
		this.priorityOccupation = priorityOccupation;
		this.vansh = vansh;
		this.gotra = gotra;
		this.status = status;
		this.createDateTime = createDateTime;
		this.modifyDateTime = modifyDateTime;
		this.imagePath = imagePath;
	}



	public Customer() {
	}



	public long getMemberid() {
		return memberid;
	}

	public void setMemberid(long memberid) {
		this.memberid = memberid;
	}

	public String getFullName() {
		return fullName;
	}

	public void setFullName(String fullName) {
		this.fullName = fullName;
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

	public String getIdType() {
		return idType;
	}

	public void setIdType(String idType) {
		this.idType = idType;
	}

	public String getIdNumber() {
		return idNumber;
	}

	public void setIdNumber(String idNumber) {
		this.idNumber = idNumber;
	}

	public String getTimeHH() {
		return timeHH;
	}

	public void setTimeHH(String timeHH) {
		this.timeHH = timeHH;
	}

	public String getTimeMM() {
		return timeMM;
	}

	public void setTimeMM(String timeMM) {
		this.timeMM = timeMM;
	}

	public String getTimeAMPM() {
		return timeAMPM;
	}

	public void setTimeAMPM(String timeAMPM) {
		this.timeAMPM = timeAMPM;
	}

	public String getBirthPlace() {
		return birthPlace;
	}

	public void setBirthPlace(String birthPlace) {
		this.birthPlace = birthPlace;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getHeight() {
		return height;
	}

	public void setHeight(String height) {
		this.height = height;
	}

	public String getColor() {
		return color;
	}

	public void setColor(String color) {
		this.color = color;
	}

	public String getManglik() {
		return manglik;
	}

	public void setManglik(String manglik) {
		this.manglik = manglik;
	}

	public String getBirth() {
		return birth;
	}

	public void setBirth(String birth) {
		this.birth = birth;
	}

	public String getEducation() {
		return education;
	}

	public void setEducation(String education) {
		this.education = education;
	}

	public String getBoardUnivercity() {
		return boardUnivercity;
	}

	public void setBoardUnivercity(String boardUnivercity) {
		this.boardUnivercity = boardUnivercity;
	}

	public String getOccupation() {
		return occupation;
	}

	public void setOccupation(String occupation) {
		this.occupation = occupation;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getCityState() {
		return cityState;
	}

	public void setCityState(String cityState) {
		this.cityState = cityState;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public String getPhoneStd() {
		return phoneStd;
	}

	public void setPhoneStd(String phoneStd) {
		this.phoneStd = phoneStd;
	}

	public String getMobile() {
		return mobile;
	}

	public void setMobile(String mobile) {
		this.mobile = mobile;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getFatherOccupation() {
		return fatherOccupation;
	}

	public void setFatherOccupation(String fatherOccupation) {
		this.fatherOccupation = fatherOccupation;
	}

	public String getBrothers() {
		return brothers;
	}

	public void setBrothers(String brothers) {
		this.brothers = brothers;
	}

	public String getBrothersMarried() {
		return brothersMarried;
	}

	public void setBrothersMarried(String brothersMarried) {
		this.brothersMarried = brothersMarried;
	}

	public String getSisters() {
		return sisters;
	}

	public void setSisters(String sisters) {
		this.sisters = sisters;
	}

	public String getSistersMarried() {
		return sistersMarried;
	}

	public void setSistersMarried(String sistersMarried) {
		this.sistersMarried = sistersMarried;
	}

	public String getVansh() {
		return vansh;
	}

	public void setVansh(String vansh) {
		this.vansh = vansh;
	}

	public String getGotra() {
		return gotra;
	}

	public void setGotra(String gotra) {
		this.gotra = gotra;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public Date getCreateDateTime() {
		return createDateTime;
	}

	public void setCreateDateTime(Date createDateTime) {
		this.createDateTime = createDateTime;
	}

	public Date getModifyDateTime() {
		return modifyDateTime;
	}

	public void setModifyDateTime(Date modifyDateTime) {
		this.modifyDateTime = modifyDateTime;
	}



	public String getGrandPaName() {
		return grandPaName;
	}



	public void setGrandPaName(String grandPaName) {
		this.grandPaName = grandPaName;
	}



	public String getWeight() {
		return weight;
	}



	public void setWeight(String weight) {
		this.weight = weight;
	}



	public String getPriorityOccupation() {
		return priorityOccupation;
	}



	public void setPriorityOccupation(String priorityOccupation) {
		this.priorityOccupation = priorityOccupation;
	}



	public String getSamajArea() {
		return samajArea;
	}



	public void setSamajArea(String samajArea) {
		this.samajArea = samajArea;
	}



	public String getImagePath() {
		return imagePath;
	}



	public void setImagePath(String imagePath) {
		this.imagePath = imagePath;
	}




}
