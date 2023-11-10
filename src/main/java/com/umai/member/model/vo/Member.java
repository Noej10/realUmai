package com.umai.member.model.vo;

import java.sql.Date;

public class Member {
	private int userNum;
	private String userId;
	private String passWord;
	private String nickName;
	private String name;
	private String email;
	private String phone;
	private String manager;
	private String secession;
	private Date joinDate;
	private Date Correction;
	private String status;
	
	public Member() {}

	public Member(int userNum, String userId, String passWord, String nickName, String name, String email, String phone,
			String manager, String secession, Date joinDate, Date correction, String status) {
		super();
		this.userNum = userNum;
		this.userId = userId;
		this.passWord = passWord;
		this.nickName = nickName;
		this.name = name;
		this.email = email;
		this.phone = phone;
		this.manager = manager;
		this.secession = secession;
		this.joinDate = joinDate;
		Correction = correction;
		this.status = status;
	}
	
	
	//회원가입을 위한 생성자
	public Member(String userId, String passWord, String nickName, String name, String email, String phone) {
		super();
		this.userId = userId;
		this.passWord = passWord;
		this.nickName = nickName;
		this.name = name;
		this.email = email;
		this.phone = phone;
	}

	public int getUserNum() {
		return userNum;
	}

	public void setUserNum(int userNum) {
		this.userNum = userNum;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getPassword() {
		return passWord;
	}

	public void setPassword(String passWord) {
		this.passWord = passWord;
	}

	public String getNickName() {
		return nickName;
	}

	public void setNickName(String nickName) {
		this.nickName = nickName;
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

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getManager() {
		return manager;
	}

	public void setManager(String manager) {
		this.manager = manager;
	}

	public String getSecession() {
		return secession;
	}

	public void setSecession(String secession) {
		this.secession = secession;
	}

	public Date getJoinDate() {
		return joinDate;
	}

	public void setJoinDate(Date joinDate) {
		this.joinDate = joinDate;
	}

	public Date getCorrection() {
		return Correction;
	}

	public void setCorrection(Date correction) {
		Correction = correction;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	@Override
	public String toString() {
		return "Member [userNum=" + userNum + ", userId=" + userId + ", passWord=" + passWord + ", nickName=" + nickName
				+ ", name=" + name + ", email=" + email + ", phone=" + phone + ", manager=" + manager + ", secession="
				+ secession + ", joinDate=" + joinDate + ", Correction=" + Correction + ", status=" + status + "]";
	}

}
