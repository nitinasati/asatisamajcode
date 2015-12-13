package com.mkyong.customer.model;

import java.util.Date;



public class AuditList implements java.io.Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private long auditId;
	private String ipAddress;
	private String queryString;
	private String remoteHost;
	private String remoteUser;
	private String sessionId;
	private String locale;
	private Date createDate;
	private Date modifyDate;
	
	public AuditList(){
		
	}
	
	public AuditList(long auditId, String ipAddress, String queryString,
			String remoteHost, String remoteUser, String sessionId,
			String locale, Date createDate, Date modifyDate) {
		this.auditId = auditId;
		this.ipAddress = ipAddress;
		this.queryString = queryString;
		this.remoteHost = remoteHost;
		this.remoteUser = remoteUser;
		this.sessionId = sessionId;
		this.locale = locale;
		this.createDate = createDate;
		this.modifyDate = modifyDate;
	}

	public long getAuditId() {
		return auditId;
	}

	public void setAuditId(long auditId) {
		this.auditId = auditId;
	}

	public String getIpAddress() {
		return ipAddress;
	}

	public void setIpAddress(String ipAddress) {
		this.ipAddress = ipAddress;
	}

	public String getQueryString() {
		return queryString;
	}

	public void setQueryString(String queryString) {
		this.queryString = queryString;
	}

	public String getRemoteHost() {
		return remoteHost;
	}

	public void setRemoteHost(String remoteHost) {
		this.remoteHost = remoteHost;
	}

	public String getRemoteUser() {
		return remoteUser;
	}

	public void setRemoteUser(String remoteUser) {
		this.remoteUser = remoteUser;
	}

	public String getSessionId() {
		return sessionId;
	}

	public void setSessionId(String sessionId) {
		this.sessionId = sessionId;
	}

	public String getLocale() {
		return locale;
	}

	public void setLocale(String locale) {
		this.locale = locale;
	}

	public Date getCreateDate() {
		return createDate;
	}

	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}

	public Date getModifyDate() {
		return modifyDate;
	}

	public void setModifyDate(Date modifyDate) {
		this.modifyDate = modifyDate;
	}
}
