package com.umai.announce.model.service;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;

import com.umai.announce.model.dao.AnnounceDao;
import com.umai.announce.model.vo.Announce;
import com.umai.common.model.vo.PageInfo;
import com.umai.common.template.Template;

public class AnnounceServiceImple implements AnnounceService{

	@Override
	public int selectListCount() {
		
		SqlSession sqlSession = Template.getSqlSession();
		
		int listCount = new AnnounceDao().selectListCount(sqlSession);
		
		sqlSession.close();
		
		return listCount;
	}

	@Override
	public int insertAnnounce(Announce ann) {
		
		SqlSession sqlSession = Template.getSqlSession();
		
		int result = new AnnounceDao().insertAnnounce(sqlSession, ann);
		
		if(result > 0) {
			sqlSession.commit();
		}else {
			sqlSession.rollback();
		}
		
		sqlSession.close();
		
		return result;
	}

	@Override
	public ArrayList<Announce> selectList(PageInfo pi) {
		
		SqlSession sqlSession = Template.getSqlSession();
		
		ArrayList<Announce> list = new AnnounceDao().selectList(sqlSession, pi);
		
		sqlSession.close();
		
		return list;
	}

}
