package com.umai.member.model.service;

import org.apache.ibatis.session.SqlSession;

import com.umai.common.template.Template;
import com.umai.member.model.dao.MemberDao;
import com.umai.member.model.vo.Member;

public class MemberServiceImpl implements MemberService{
	
	private MemberDao mDao = new MemberDao();
	
	@Override
	public int updateEmailMember(Member m) {
		SqlSession sqlSession = Template.getSqlSession();
		
		int result = mDao.updateEmailMember(sqlSession, m);
		
		if(result > 0) {
			sqlSession.commit();
		}
		
		sqlSession.close();
		
		return result;
	}

	@Override
	public int updateNickMember(Member m) {
		SqlSession sqlSession = Template.getSqlSession();
		
		int result = mDao.updateEmailMember(sqlSession, m);
		
		if(result > 0) {
			sqlSession.commit();
		}
		
		sqlSession.close();
		
		return result;
	}

	@Override
	public int updatePhoneMember(Member m) {
		SqlSession sqlSession = Template.getSqlSession();
		
		int result = mDao.updateEmailMember(sqlSession, m);
		
		if(result > 0) {
			sqlSession.commit();
		}
		
		sqlSession.close();
		
		return result;
	}

	@Override
	public int updatePwdMember(Member m) {
		SqlSession sqlSession = Template.getSqlSession();
		
		int result = mDao.updateEmailMember(sqlSession, m);
		
		if(result > 0) {
			sqlSession.commit();
		}
		
		sqlSession.close();
		
		return result;
	}
}
