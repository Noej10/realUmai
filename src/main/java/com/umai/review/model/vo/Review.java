package com.umai.review.model.vo;

import java.sql.Date;

public class Review {
	private int commentNum;
	   private String commentContents;
	   private Date revWrite;
	   private int revRestnum;
	   private int memberNum;
	   private int revTaste;
	   private int revKind;
	   private int revFacility;
	   private int revPrice;
	   private int revMobility;
	   private int revWaiting;
	   private int revSpeed;
	   private int revClean;
	   private int revRevisit;
	   private int revAvgscore;
	   private String status;
	   private String nickname;
	
	   public Review() {}

	public Review(int commentNum, String commentContents, Date revWrite, int revRestnum, int memberNum, int revTaste,
			int revKind, int revFacility, int revPrice, int revMobility, int revWaiting, int revSpeed, int revClean,
			int revRevisit, int revAvgscore, String status, String nickname) {
		super();
		this.commentNum = commentNum;
		this.commentContents = commentContents;
		this.revWrite = revWrite;
		this.revRestnum = revRestnum;
		this.memberNum = memberNum;
		this.revTaste = revTaste;
		this.revKind = revKind;
		this.revFacility = revFacility;
		this.revPrice = revPrice;
		this.revMobility = revMobility;
		this.revWaiting = revWaiting;
		this.revSpeed = revSpeed;
		this.revClean = revClean;
		this.revRevisit = revRevisit;
		this.revAvgscore = revAvgscore;
		this.status = status;
		this.nickname = nickname;
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

	public int getMemberNum() {
		return memberNum;
	}

	public void setMemberNum(int memberNum) {
		this.memberNum = memberNum;
	}

	public int getRevTaste() {
		return revTaste;
	}

	public void setRevTaste(int revTaste) {
		this.revTaste = revTaste;
	}

	public int getRevKind() {
		return revKind;
	}

	public void setRevKind(int revKind) {
		this.revKind = revKind;
	}

	public int getRevFacility() {
		return revFacility;
	}

	public void setRevFacility(int revFacility) {
		this.revFacility = revFacility;
	}

	public int getRevPrice() {
		return revPrice;
	}

	public void setRevPrice(int revPrice) {
		this.revPrice = revPrice;
	}

	public int getRevMobility() {
		return revMobility;
	}

	public void setRevMobility(int revMobility) {
		this.revMobility = revMobility;
	}

	public int getRevWaiting() {
		return revWaiting;
	}

	public void setRevWaiting(int revWaiting) {
		this.revWaiting = revWaiting;
	}

	public int getRevSpeed() {
		return revSpeed;
	}

	public void setRevSpeed(int revSpeed) {
		this.revSpeed = revSpeed;
	}

	public int getRevClean() {
		return revClean;
	}

	public void setRevClean(int revClean) {
		this.revClean = revClean;
	}

	public int getRevRevisit() {
		return revRevisit;
	}

	public void setRevRevisit(int revRevisit) {
		this.revRevisit = revRevisit;
	}

	public int getRevAvgscore() {
		return revAvgscore;
	}

	public void setRevAvgscore(int revAvgscore) {
		this.revAvgscore = revAvgscore;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getNickname() {
		return nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}

	@Override
	public String toString() {
		return "Review [commentNum=" + commentNum + ", commentContents=" + commentContents + ", revWrite=" + revWrite
				+ ", revRestnum=" + revRestnum + ", memberNum=" + memberNum + ", revTaste=" + revTaste + ", revKind="
				+ revKind + ", revFacility=" + revFacility + ", revPrice=" + revPrice + ", revMobility=" + revMobility
				+ ", revWaiting=" + revWaiting + ", revSpeed=" + revSpeed + ", revClean=" + revClean + ", revRevisit="
				+ revRevisit + ", revAvgscore=" + revAvgscore + ", status=" + status + ", nickname=" + nickname + "]";
	}
	   
	   
}


