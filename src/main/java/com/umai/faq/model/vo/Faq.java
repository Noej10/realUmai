package com.umai.faq.model.vo;

public class Faq {
	private int faqNum;
	private String faqKind;
	private String faqTitle;
	private String faqDetail;
	private String faqContent;
	private String faqDate;
	private String status;

	public Faq() {}
	
	public Faq(int faqNum, String faqKind, String faqTitle, String faqDetail, String faqContent, String faqDate,
			String status) {
		super();
		this.faqNum = faqNum;
		this.faqKind = faqKind;
		this.faqTitle = faqTitle;
		this.faqDetail = faqDetail;
		this.faqContent = faqContent;
		this.faqDate = faqDate;
		this.status = status;
	}


	public int getFaqNum() {
		return faqNum;
	}

	public void setFaqNum(int faqNum) {
		this.faqNum = faqNum;
	}

	public String getFaqKind() {
		return faqKind;
	}

	public void setFaqKind(String faqKind) {
		this.faqKind = faqKind;
	}

	public String getFaqTitle() {
		return faqTitle;
	}

	public void setFaqTitle(String faqTitle) {
		this.faqTitle = faqTitle;
	}


	public String getFaqDetail() {
		return faqDetail;
	}

	public void setFaqDetail(String faqDetail) {
		this.faqDetail = faqDetail;
	}
	
	public String getFaqContent() {
		return faqContent;
	}

	public void setFaqContent(String faqContent) {
		this.faqContent = faqContent;
	}

	public String getFaqDate() {
		return faqDate;
	}

	public void setFaqDate(String faqDate) {
		this.faqDate = faqDate;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	@Override
	public String toString() {
		return "Faq [faqNum=" + faqNum + ", faqKind=" + faqKind + ", faqTitle=" + faqTitle + ", faqContent="
				+ faqContent + ", faqDate=" + faqDate + ", status=" + status + "]";
	}
	
}


