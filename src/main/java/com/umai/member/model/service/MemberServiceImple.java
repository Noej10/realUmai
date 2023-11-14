package com.umai.member.model.service;

import org.apache.ibatis.session.SqlSession;
import com.umai.common.template.Template;
import com.umai.member.model.dao.MemberDao;
import com.umai.member.model.vo.Member;

public class MemberServiceImple implements MemberService{

	@Override
	public Member loginMember(Member m) {
		
		SqlSession sqlSession = Template.getSqlSession();
		
		Member loginUser = new MemberDao().loginMember(sqlSession,m);
		
		sqlSession.close();
		
		return loginUser;
	}

	@Override
	public Member findId(Member m) {
		SqlSession sqlSession = Template.getSqlSession();
		
		Member findId = new MemberDao().findId(sqlSession,m);
		
		sqlSession.close();
		
		return findId;
	}

	@Override
	public Member findPwd(Member m) {
		SqlSession sqlSession = Template.getSqlSession();
		
		Member findPwd = new MemberDao().findPwd(sqlSession,m);
		
		sqlSession.close();
		
		return findPwd;
	}


		@Override
	public int insertMember(Member m) {
		
		SqlSession sqlSession = Template.getSqlSession();
		
		int result = new MemberDao().insertMember(sqlSession, m);
		
		if(result > 0) {
			sqlSession.commit();
		}
		
		sqlSession.close();
		
		return result;
	}

	@Override
	public int updateNickMember(Member m) {
		SqlSession sqlSession = Template.getSqlSession();
		
		int result = new MemberDao().updateNickMember(sqlSession, m);
		
		if(result > 0) {
			sqlSession.commit();
		} else {
			sqlSession.rollback();
		}
		
		sqlSession.close();
		
		return result;
	}

	@Override
	public int updatePhoneMember(Member m) {
		SqlSession sqlSession = Template.getSqlSession();
		
		int result = new MemberDao().updatePhoneMember(sqlSession, m);
		
		if(result > 0) {
			sqlSession.commit();
		} else {
			sqlSession.rollback();
		}
		
		sqlSession.close();
		
		return result;
	}

	@Override
	public int updatePwdMember(Member m) {
		SqlSession sqlSession = Template.getSqlSession();
		
		int result = new MemberDao().updatePwdMember(sqlSession, m);
		
		if(result > 0) {
			sqlSession.commit();
		} else {
			sqlSession.rollback();
		}
		
		sqlSession.close();
		
		return result;
	}

	@Override
	public int updateEmailMember(Member m) {
		SqlSession sqlSession = Template.getSqlSession();
		
		int result = new MemberDao().updateEmailMember(sqlSession, m);
		
		if(result > 0) {
			sqlSession.commit();
		} else {
			sqlSession.rollback();
		}
		
		sqlSession.close();
		
		return result;
	}

	@Override
	public int deleteMember(Member m) {
		SqlSession sqlSession = Template.getSqlSession();
		
		int result = mDao.deleteMember(sqlSession, m);
		
		if(result > 0) {
			sqlSession.commit();
		}
		
		sqlSession.close();
		
		return result;
	}

	@Override
	public Member checkPwdMember(Member m) {
		SqlSession sqlSession = Template.getSqlSession();
		
		Member delMember = mDao.checkPwdMember(sqlSession, m);
		
		sqlSession.close();

		return delMember;
	}




}
