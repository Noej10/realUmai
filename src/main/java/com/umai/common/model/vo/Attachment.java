package com.umai.common.model.vo;

public class Attachment {
	private int fileNo;
	private int refBno;
	private String originName;
	private String filePath;
	private int fileLevel;
	private String status;
	
	public Attachment() {}

	public Attachment(int fileNo, int refBno, String originName, String filePath, int fileLevel, String ststus) {
		super();
		this.fileNo = fileNo;
		this.refBno = refBno;
		this.originName = originName;
		this.filePath = filePath;
		this.fileLevel = fileLevel;
		this.status = ststus;
	}

	public int getFileNo() {
		return fileNo;
	}

	public void setFileNo(int fileNo) {
		this.fileNo = fileNo;
	}

	public int getRefBno() {
		return refBno;
	}

	public void setRefBno(int refBno) {
		this.refBno = refBno;
	}

	public String getOriginName() {
		return originName;
	}

	public void setOriginName(String originName) {
		this.originName = originName;
	}

	public String getFilePath() {
		return filePath;
	}

	public void setFilePath(String filePath) {
		this.filePath = filePath;
	}

	public int getFileLevel() {
		return fileLevel;
	}

	public void setFileLevel(int fileLevel) {
		this.fileLevel = fileLevel;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String ststus) {
		this.status = ststus;
	}

	@Override
	public String toString() {
		return "Attachment [fileNo=" + fileNo + ", refBno=" + refBno + ", originName=" + originName + ", filePath="
				+ filePath + ", fileLevel=" + fileLevel + ", status=" + status + "]";
	}
	
	
}