package com.umai.faq.model.service;

import org.apache.ibatis.session.SqlSession;

import com.umai.common.template.Template;
import com.umai.faq.model.dao.FaqDao;

public class FaqServiceImple implements FaqService{
	
	private FaqDao fDao = new FaqDao();

	@Override
	public int faqList() {
		SqlSession sqlSession = Template.getSqlSession();
		int list = fDao.faqList(sqlSession);
		
		sqlSession.close();
		return list;
	}
}
