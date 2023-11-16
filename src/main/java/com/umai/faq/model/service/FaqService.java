package com.umai.faq.model.service;

import java.util.ArrayList;

import com.umai.common.model.vo.PageInfo;
import com.umai.faq.model.vo.Faq;

public interface FaqService {
	
	public int insertFaq(Faq faq);
	
	public ArrayList<Faq> selectList(PageInfo pi);
	
	public int selectListCount();

	public int updateFaq(Faq faq);
	
	public int deleteFaq(Faq faq);


	public int faqList();

}
