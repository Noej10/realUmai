package com.umai.member.model.service;

import org.apache.ibatis.session.SqlSession;

import com.umai.common.template.Template;
import com.umai.member.model.dao.MemberDao;
import com.umai.member.model.vo.Member;

public class MemberServiceImple implements MemberService{

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
	public Member findPwd(Member m) {
		SqlSession sqlSession = Template.getSqlSession();
		
		Member findPwd = MemberDao.findPwd(sqlSession,m);
		
		sqlSession.close();
		
		return findPwd;
	}

}
