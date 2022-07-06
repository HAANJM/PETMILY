package com.kh.member.model.vo;

import java.sql.Date;

public class Member {
	
	private int userNo; //USER_NO	NUMBER
	private String userId; //USER_ID	VARCHAR2(30 BYTE)
	private String userPwd; //USER_PWD	VARCHAR2(100 BYTE)
	private String userName; //USER_NAME	VARCHAR2(20 BYTE)
	private String userNickname; //USER_NICKNAME	VARCHAR2(20 BYTE)
	private Date enrollDate; //ENROLL_DATE	DATE
	private String birthDate; //BIRTH_DATE	DATE
	private String email; //EMAIL	VARCHAR2(100 BYTE)
	private String address; //ADDRESS	VARCHAR2(100 BYTE)
	private String phone; //PHONE	VARCHAR2(20 BYTE)
	private String status; //STATUS	VARCHAR2(1 BYTE)
	private String userClass; //CLASS	VARCHAR2(1 BYTE)
	
	public Member() {
		super();
	}
	public Member(String userId, String userPwd, String userName, String userNickname, String birthDate, String email,
			String address, String phone) {
		super();
		this.userId = userId;
		this.userPwd = userPwd;
		this.userName = userName;
		this.userNickname = userNickname;
		this.birthDate = birthDate;
		this.email = email;
		this.address = address;
		this.phone = phone;
	}
	// 임시로 userClass 사용, 나중에 지울 예정
	public Member(String userId, String userPwd, String userName, String userNickname, String birthDate, String email,
			String address, String phone, String userClass) {
		super();
		this.userId = userId;
		this.userPwd = userPwd;
		this.userName = userName;
		this.userNickname = userNickname;
		this.birthDate = birthDate;
		this.email = email;
		this.address = address;
		this.phone = phone;
		this.userClass = userClass;
	}
	public Member(int userNo, String userId, String userPwd, String userName, String userNickname, Date enrollDate,
			String birthDate, String email, String address, String phone, String status, String userClass) {
		super();
		this.userNo = userNo;
		this.userId = userId;
		this.userPwd = userPwd;
		this.userName = userName;
		this.userNickname = userNickname;
		this.enrollDate = enrollDate;
		this.birthDate = birthDate;
		this.email = email;
		this.address = address;
		this.phone = phone;
		this.status = status;
		this.userClass = userClass;
	}
	
	public int getUserNo() {
		return userNo;
	}
	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getUserPwd() {
		return userPwd;
	}
	public void setUserPwd(String userPwd) {
		this.userPwd = userPwd;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getUserNickname() {
		return userNickname;
	}
	public void setUserNickname(String userNickname) {
		this.userNickname = userNickname;
	}
	public Date getEnrollDate() {
		return enrollDate;
	}
	public void setEnrollDate(Date enrollDate) {
		this.enrollDate = enrollDate;
	}
	public String getBirthDate() {
		return birthDate;
	}
	public void setBirthDate(String birthDate) {
		this.birthDate = birthDate;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getUserClass() {
		return userClass;
	}
	public void setUserClass(String userClass) {
		this.userClass = userClass;
	}
	
	@Override
	public String toString() {
		return "Member [userNo=" + userNo + ", userId=" + userId + ", userPwd=" + userPwd + ", userName=" + userName
				+ ", userNickname=" + userNickname + ", enrollDate=" + enrollDate + ", birthDate=" + birthDate
				+ ", email=" + email + ", address=" + address + ", phone=" + phone + ", status=" + status
				+ ", userClass=" + userClass + "]";
	}
}
