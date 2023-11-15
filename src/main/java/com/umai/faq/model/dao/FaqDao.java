package com.umai.faq.model.dao;
import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;

import com.umai.common.model.vo.PageInfo;
import com.umai.faq.model.vo.Faq;

public class FaqDao {
	
	
	public int insertFaq(SqlSession sqlSession, Faq faq) {
		return sqlSession.insert("faqMapper.insertFaq",faq);
	}
	
	public ArrayList<Faq> selectList(SqlSession sqlSession, PageInfo pi){
		
		int offset = (pi.getCurrentPage()-1) * pi.getBoardLimit();
		int limit = pi.getBoardLimit();
		
		RowBounds rBounds = new RowBounds(offset, limit);
		
		return (ArrayList)sqlSession.selectList("faqMapper.selectList", null, rBounds);
	}
	
	public int selectListCount(SqlSession sqlSession) {
		return sqlSession.selectOne("faqMapper.selectListCount");
	}

	public int faqList(SqlSession sqlSession) {
		return sqlSession.selectOne("faqMapper.faqList");
	}
}
