package com.umai.announce.model.vo;

import java.sql.Date;

	




public class Announce {
	private int annNum;
	private String title;
	private String detail;
	private String annWrite;
	private String status;
	
	// 빈 생성자
	public Announce() {
		super();
	}

	// 모든 필드 생성자
	public Announce(int annNum, String title, String detail, String annWrite, String status) {
		super();
		this.annNum = annNum;
		this.title = title;
		this.detail = detail;
		this.annWrite = annWrite;
		this.status = status;
	}



	
	// 게터, 세터
	public int getAnnNum() {
		return annNum;
	}

	public void setAnnNum(int annNum) {
		this.annNum = annNum;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getDetail() {
		return detail;
	}

	public void setDetail(String detail) {
		this.detail = detail;
	}



	public String getAnnWrite() {
		return annWrite;
	}

	public void setAnnWrite(String annWrite) {

		this.annWrite = annWrite;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}


	
	// toString
	@Override
	public String toString() {
		return "Announce [annNum=" + annNum + ", title=" + title + ", detail=" + detail + ", annWrite=" + annWrite
				+ ", status=" + status + "]";
	}
	
	

}


