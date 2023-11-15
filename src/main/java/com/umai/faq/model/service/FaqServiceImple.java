package com.umai.faq.model.service;
import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;

import com.umai.common.model.vo.PageInfo;
import com.umai.common.template.Template;
import com.umai.faq.model.dao.FaqDao;
import com.umai.faq.model.vo.Faq;

public class FaqServiceImple implements FaqService{

	private FaqDao fDao = new FaqDao();

	@Override
	public int insertFaq(Faq faq) {
		
		SqlSession sqlSession = Template.getSqlSession();
		
		int result = new FaqDao().insertFaq(sqlSession, faq);
		
		if(result>0) {
			sqlSession.commit();
		}else {
			sqlSession.rollback();
		}
		
		sqlSession.close();
		
		return result;
	}

	@Override
	public ArrayList<Faq> selectList(PageInfo pi) {
		
		SqlSession sqlSession = Template.getSqlSession();
		
		ArrayList<Faq> list = new FaqDao().selectList(sqlSession,pi);
		
		sqlSession.close();
		
		return list;
	}

	@Override
	public int selectListCount() {
		
		SqlSession sqlSession = Template.getSqlSession();
		
		int listCount = new FaqDao().selectListCount(sqlSession);
		
		sqlSession.close();
		
		return listCount;
	}

	@Override
	public int updateFaq(Faq faq) {
		
		SqlSession sqlSession = Template.getSqlSession();
		
		int result= new FaqDao().updateFaq(sqlSession,faq);
		
		if(result>0) {
			sqlSession.commit();
		}else {
			sqlSession.rollback();
		}
		
		sqlSession.close();
		
		return result;
	}

	@Override
	public int deleteFaq(Faq faq) {
		
		SqlSession sqlSession = Template.getSqlSession();
		
		int result = new FaqDao().deleteFaq(sqlSession,faq);
		
		if(result>0) {
			sqlSession.commit();
		}else {
			sqlSession.rollback();
		}
			
			sqlSession.close();
			
		return result;
	}

	@Override
	public int faqList() {
		SqlSession sqlSession = Template.getSqlSession();
		int list = fDao.faqList(sqlSession);
		
		sqlSession.close();
		return list;
	}

}
