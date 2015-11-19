package com.mkyong.customer.model;



public class User implements java.io.Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private long memberid;
	private String userName;
	private String password;
	private String roleName;
	
	public User(long memberid,String userName, String password, String roleName) {

		this.memberid = memberid;
		this.userName = userName;
		this.password = password;
		this.roleName = roleName;
	}



	public User() {
	}



	public long getMemberid() {
		return memberid;
	}

	public void setMemberid(long memberid) {
		this.memberid = memberid;
	}



	public String getUserName() {
		return userName;
	}



	public void setUserName(String userName) {
		this.userName = userName;
	}



	public String getPassword() {
		return password;
	}



	public void setPassword(String password) {
		this.password = password;
	}



	public String getRoleName() {
		return roleName;
	}



	public void setRoleName(String roleName) {
		this.roleName = roleName;
	}


}
