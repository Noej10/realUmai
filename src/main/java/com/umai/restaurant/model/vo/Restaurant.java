package com.umai.restaurant.model.vo;

public class Restaurant {
	private int restNum;
	private String restName;
	private int suggestion;
	private int restCheck;
	private String original;
	private String restDelete;
	private String duction;
	private int grade;
	private String menu;
	private String opening;
	private String address;
	private String region;
	private String status;

	public Restaurant() {
	}

	public Restaurant(int restNum, String restName, int suggestion, int restCheck, String original, String restDelete,
			String duction, int grade, String menu, String opening, String address, String region, String status) {
		super();
		this.restNum = restNum;
		this.restName = restName;
		this.suggestion = suggestion;
		this.restCheck = restCheck;
		this.original = original;
		this.restDelete = restDelete;
		this.duction = duction;
		this.grade = grade;
		this.menu = menu;
		this.opening = opening;
		this.address = address;
		this.region = region;
		this.status = status;
	}

	public int getRestNum() {
		return restNum;
	}

	public void setRestNum(int restNum) {
		this.restNum = restNum;
	}

	public String getRestName() {
		return restName;
	}

	public void setRestName(String restName) {
		this.restName = restName;
	}

	public int getSuggestion() {
		return suggestion;
	}

	public void setSuggestion(int suggestion) {
		this.suggestion = suggestion;
	}

	public int getRestCheck() {
		return restCheck;
	}

	public void setRestCheck(int restCheck) {
		this.restCheck = restCheck;
	}

	public String getOriginal() {
		return original;
	}

	public void setOriginal(String original) {
		this.original = original;
	}

	public String getRestDelete() {
		return restDelete;
	}

	public void setRestDelete(String restDelete) {
		this.restDelete = restDelete;
	}

	public String getDuction() {
		return duction;
	}

	public void setDuction(String duction) {
		this.duction = duction;
	}

	public int getGrade() {
		return grade;
	}

	public void setGrade(int grade) {
		this.grade = grade;
	}

	public String getMenu() {
		return menu;
	}

	public void setMenu(String menu) {
		this.menu = menu;
	}

	public String getOpening() {
		return opening;
	}

	public void setOpening(String opening) {
		this.opening = opening;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getRegion() {
		return region;
	}

	public void setRegion(String region) {
		this.region = region;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	@Override
	public String toString() {
		return "Restaurant [restNum=" + restNum + ", restName=" + restName + ", suggestion=" + suggestion
				+ ", restCheck=" + restCheck + ", original=" + original + ", restDelete=" + restDelete + ", duction="
				+ duction + ", grade=" + grade + ", menu=" + menu + ", opening=" + opening + ", address=" + address
				+ ", region=" + region + ", status=" + status + ", getRestNum()=" + getRestNum() + ", getRestName()="
				+ getRestName() + ", getSuggestion()=" + getSuggestion() + ", getRestCheck()=" + getRestCheck()
				+ ", getOriginal()=" + getOriginal() + ", getRestDelete()=" + getRestDelete() + ", getDuction()="
				+ getDuction() + ", getGrade()=" + getGrade() + ", getMenu()=" + getMenu() + ", getOpening()="
				+ getOpening() + ", getAddress()=" + getAddress() + ", getRegion()=" + getRegion() + ", getStatus()="
				+ getStatus() + ", getClass()=" + getClass() + ", hashCode()=" + hashCode() + ", toString()="
				+ super.toString() + "]";
	}
	
	

}
