package com.umai.faq.model.vo;

public class Faq {
	private String faqTitle;
	private String faqDetail;
	
	public Faq() {}

	public Faq(String faqTitle, String faqDetail) {
		super();
		this.faqTitle = faqTitle;
		this.faqDetail = faqDetail;
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

	@Override
	public String toString() {
		return "Faq [faqTitle=" + faqTitle + ", faqDetail=" + faqDetail + "]";
	}
	
}

