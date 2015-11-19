package com.mkyong.customer.model;

import java.util.Date;



public class Team implements java.io.Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private long memberid;
	private String fullName;
    private String designation;
    private String department;
    private String city;
    private String contactNumber;
	private Date createDateTime;
	private Date modifyDateTime;
    private String status;
	
	public Team(long memberid,String fullName, String designation, String department, String city, String contactNumber, Date createDateTime, Date modifyDateTime, String status) {

		this.memberid = memberid;
		this.fullName = fullName;
		this.designation = designation;
		this.department = department;
		this.city = city;
		this.contactNumber = contactNumber;
		this.createDateTime = createDateTime;
		this.modifyDateTime = modifyDateTime;
		this.createDateTime = createDateTime;
		this.status = status;
	}



	public Team() {
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



	public String getDesignation() {
		return designation;
	}



	public void setDesignation(String designation) {
		this.designation = designation;
	}



	public String getDepartment() {
		return department;
	}



	public void setDepartment(String department) {
		this.department = department;
	}



	public String getCity() {
		return city;
	}



	public void setCity(String city) {
		this.city = city;
	}



	public String getContactNumber() {
		return contactNumber;
	}



	public void setContactNumber(String contactNumber) {
		this.contactNumber = contactNumber;
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



	public String getStatus() {
		return status;
	}



	public void setStatus(String status) {
		this.status = status;
	}



	
}
