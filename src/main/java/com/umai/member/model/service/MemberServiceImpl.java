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

	@Override
	public Member loginMember(Member m) {
		
		SqlSession sqlSession = Template.getSqlSession();
		
		Member loginUser = MemberDao.loginMember(sqlSession,m);
		
		sqlSession.close();
		
		return loginUser;
	}

	@Override
	public Member findId(Member m) {
		SqlSession sqlSession = Template.getSqlSession();
		
		Member findId = MemberDao.findId(sqlSession,m);
		
		sqlSession.close();
		
		return findId;
	}

	@Override
	public int insertMember(Member m) {
		
		SqlSession sqlSession = Template.getSqlSession();
		
		int result = mDao.insertMember(sqlSession, m);
		
		if(result > 0) {
			sqlSession.commit();
		}
		
		sqlSession.close();
		
		return result;
	}
	
	public String selectId(String userId) {
		SqlSession sqlSession = Template.getSqlSession();
		
		String userIdCheck = mDao.selectId(sqlSession, userId);
		
		if(userIdCheck.equals("userId")) {
			sqlSession.commit();
		}
		
		sqlSession.close();
		
		return userIdCheck;
	}
}
