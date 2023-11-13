package com.umai.faq.model.dao;

import org.apache.ibatis.session.SqlSession;

public class FaqDao {
	public int faqList(SqlSession sqlSession) {
		return sqlSession.selectOne("faqMapper.faqList");
	}
}
