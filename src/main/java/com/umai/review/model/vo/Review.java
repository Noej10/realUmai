package com.umai.review.model.vo;

import java.sql.Date;

public class Review {
	private int commentNum;
	private String commentContents;
	private Date revWrite;
	private int revRestnum;
	private String status;
	
	 public Review() {}

	public Review(int commentNum, String commentContents, Date revWrite, int revRestnum, String status) {
		super();
		this.commentNum = commentNum;
		this.commentContents = commentContents;
		this.revWrite = revWrite;
		this.revRestnum = revRestnum;
		this.status = status;
	}

	public int getCommentNum() {
		return commentNum;
	}

	public void setCommentNum(int commentNum) {
		this.commentNum = commentNum;
	}

	public String getCommentContents() {
		return commentContents;
	}

	public void setCommentContents(String commentContents) {
		this.commentContents = commentContents;
	}

	public Date getRevWrite() {
		return revWrite;
	}

	public void setRevWrite(Date revWrite) {
		this.revWrite = revWrite;
	}

	public int getRevRestnum() {
		return revRestnum;
	}

	public void setRevRestnum(int revRestnum) {
		this.revRestnum = revRestnum;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	@Override
	public String toString() {
		return "Review [commentNum=" + commentNum + ", commentContents=" + commentContents + ", revWrite=" + revWrite
				+ ", revRestnum=" + revRestnum + ", status=" + status + "]";
	}
	 
	 
}
