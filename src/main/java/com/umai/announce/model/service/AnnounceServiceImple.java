package com.umai.announce.model.service;

import org.apache.ibatis.session.SqlSession;

import com.umai.announce.model.dao.AnnounceDao;
import com.umai.announce.model.vo.Announce;
import com.umai.common.template.Template;

public class AnnounceServiceImple implements AnnounceService{
	
	private AnnounceDao aDao = new AnnounceDao();

	@Override
	public Announce selectAnnounce(int annNum) {
		
		SqlSession sqlSession = Template.getSqlSession();
		Announce a = aDao.selectAnnounce(sqlSession, annNum);
		
		sqlSession.close();
		
		return a;
	}
		
	
}
