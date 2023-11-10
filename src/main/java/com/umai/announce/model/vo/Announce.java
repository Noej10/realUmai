package com.umai.announce.model.vo;

import java.sql.Date;

public class Announce {
	private int annNum;
	private String title;
	private String detail;
	private Date annWrite;
	private String status;
	
	public Announce() {}

	public Announce(int annNum, String title, String detail, Date annWrite, String status) {
		super();
		this.annNum = annNum;
		this.title = title;
		this.detail = detail;
		this.annWrite = annWrite;
		this.status = status;
	}

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

	public Date getAnnWrite() {
		return annWrite;
	}

	public void setAnnWrite(Date annWrite) {
		this.annWrite = annWrite;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	@Override
	public String toString() {
		return "Announce [annNum=" + annNum + ", title=" + title + ", detail=" + detail + ", annWrite=" + annWrite
				+ ", status=" + status + "]";
	}
}
